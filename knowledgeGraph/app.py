#!/usr/bin/env python
# -*- coding: utf-8 -*-
# @Time    : 2024/1/16 15:57
# @Author  : 晚秋
# @File    : app.py
# @Description : 接口实现类，来提供问答接口，查询接口等
import hashlib
from datetime import datetime
import uvicorn
from py2neo import Graph
from fastapi import FastAPI, Query
from fastapi.middleware.cors import CORSMiddleware
from opencc import OpenCC
from sqlalchemy.orm import Session
from Ai import ChatBot
from info import get_query
from model import historyModel, get_db, SearchData
from fastapi import  Depends
from fastapi.openapi.models import Info
from fastapi.openapi.utils import get_openapi
from tools import filter_dict, filter_for_title

cc = OpenCC('t2s')  # 创建一个简繁体转换器，t2s表示繁体到简体
# 创建 SessionLocal 类
getBiography = "MATCH (a:author)-[:belong_of]->(d:desc) WHERE a.name = '{}' RETURN d.name"  # 查找生平
GetPoemCome = "MATCH (t:title)-[:content_of]->(p:paragraphs) WHERE p.name CONTAINS '{}' RETURN t.name, p.name" # 通过诗句找题目
is_find_author = "MATCH (t:title {name: '{}'})-[:author_of]->(a:author {name: '{}'}) RETURN t.name,a.name" #
chatbot = ChatBot()

app = FastAPI()
# 添加CORS中间件
app.add_middleware(
    CORSMiddleware,
    allow_origins=["*"],  # 允许所有来源访问，你可以根据需要修改
    allow_credentials=True,
    allow_methods=["*"],  # 允许所有方法，你也可以指定特定的方法
    allow_headers=["*"],  # 允许所有请求头
)

g = Graph('http://localhost:7474', auth=('neo4j', 'zhangsan@123'))
@app.get("/get_chat")
async def get_chat(chat: str = Query(..., title="Chat Parameter", description="聊天的接口")):
    if chat == "你是谁":
        response_data = {"chat": "我是您的诗词助手，您有什么需要帮助的吗？", "status": "success"}
        return response_data
    result = get_query(chat)
    try:
        if result["question_types"][0] == "title_author":
            key_title = [key for key, values in result["args"].items() if 'title' in values]
            query = "MATCH (t:title {name:'"+key_title[0]+"'})-[:author_of]->(a:author) RETURN a.name"
            response = g.run(query).data()
            response = "{}这首诗的作者为 ".format(key_title[0]) + response[0]['a.name']
        elif result["question_types"][0] == "author_shengping":
            keys_with_author = [key for key, values in result["args"].items() if 'author' in values]
            query = getBiography.format(keys_with_author[0])
            response = g.run(query).data()
            response = "{}的个人生平为   ".format(keys_with_author[0]) + response[0]['d.name']
        elif result["question_types"][0] == "author_title":
            keys_with_author = [key for key, values in result["args"].items() if 'author' in values]
            query = "MATCH (t:title)-[:author_of]->(a:author {name: '"+keys_with_author[0]+"'}) RETURN t.name"
            response =[i["t.name"] for i in g.run(query).data()]
            response = "{}写过的诗有   ".format(keys_with_author[0]) + "\n".join(response)
        elif  result["question_types"][0] == "title_gra":
            key_title = [key for key, values in result["args"].items() if 'title' in values]
            query = "MATCH (t:title {name:'"+key_title[0]+"'})-[:content_of]->(p:paragraphs) RETURN p.name"
            response = [i["p.name"] for i in g.run(query).data()]
            response = list(set(response))
            response = "{}这首诗的原文内容为  ".format(key_title[0]) + "\n".join(response)
        elif result["question_types"][0] == "gra_title":
            paragraphs_title = [key for key, values in result["args"].items() if 'paragraphs' in values]
            query = GetPoemCome.format(paragraphs_title[0])
            response = [i["t.name"] +"原文内容为" + i["p.name"]  for i in g.run(query).data()]
            response = list(set(response))
            response = "{}这句诗出自".format(paragraphs_title[0]) + "".join(response)
        elif result["question_types"][0] == "is_paragraphs_title":
            paragraphs_key = [key for key, values in result["args"].items() if 'paragraphs' in values]
            title_key = [key for key, values in result["args"].items() if 'title' in values]
            query = "MATCH (t:title {name: '"+title_key[0]+"'})-[:content_of]->(p:paragraphs) WHERE p.name CONTAINS '"+paragraphs_key[0]+"' RETURN p.name"
            result = g.run(query).data()
            if len(result) == 0:
                query = GetPoemCome.format(paragraphs_key[0])
                response = [i["t.name"] + "原文内容为" + i["p.name"] for i in g.run(query).data()]
                response = list(set(response))
                response = "不是，这句诗{}不是出自{}".format(paragraphs_key[0],title_key[0]) + "是出自"+"".join(response)
            else:
                response = "是，这句诗{}是出自{}".format(paragraphs_key[0], title_key[0])
        elif result["question_types"][0] == "is_author_title":
            author_key = [key for key, values in result["args"].items() if 'author' in values]
            title_key = [key for key, values in result["args"].items() if 'title' in values]
            query = "MATCH (t:title {name: '"+title_key[0]+"'})-[:author_of]->(a:author {name: '{}'}) RETURN t.name,a.name".format(author_key)
            result = g.run(query).data()
            if len(result) == 0:
                query = "MATCH (t:title)-[:author_of]->(a:author {name: '"+author_key[0]+"'}) RETURN t.name"
                response = [i["t.name"] for i in g.run(query).data()]
                response = list(set(response))
                response = "不是，这首诗{}不是{}写的".format(title_key[0], title_key) + "他写过诗有 " + "\n".join(response)
            else:
                response =  "是，这首诗{}是{}写的".format(title_key[0], title_key)
        else:
            response = chatbot.chat(chat)
    except Exception as e:
        response = chatbot.chat(chat)

    response = cc.convert(response)
    response_data = {"chat": response, "status": "success"}
    return response_data





@app.post("/search")
async def search_data(search_data: SearchData,db: Session = Depends(get_db)):

    querys = {"2":"MATCH (p:paragraphs)<-[:content_of]-(t:title) WHERE p.name CONTAINS '{}' MATCH (p)<-[:author_of2]-(a:author)<-[:author_of]-(t) WITH a, COLLECT(p.name) AS paragraphNames, COLLECT(t.name) AS titleNames RETURN a.name AS authorName, paragraphNames, titleNames;",
              "0":"MATCH (a:author) WHERE a.name CONTAINS '{}' OPTIONAL MATCH (a)<-[:author_of]-(t:title) OPTIONAL MATCH (a)-[:author_of2]->(p:paragraphs) RETURN a.name AS authorName, COLLECT(DISTINCT p.name) AS paragraphsName, COLLECT(DISTINCT t.name) AS titleName",
              "1":"MATCH (p:paragraphs)<-[:author_of2]-(a:author) MATCH (p)<-[:content_of]-(t:title)-[:author_of]->(a2:author) WHERE t.name CONTAINS '{}' AND a2 = a RETURN a.name AS authorName, COLLECT(DISTINCT t.name) AS titleNames, COLLECT(DISTINCT p.name) AS paragraphNames"}
    # 创建数据模型对象
    # 获取当前时间的字符串表示
    result = []
    if search_data.selectType == "0":
        query = querys[search_data.selectType].format(search_data.selectValue)
        info = g.run(query).data()
        info = filter_dict(info)
        for item in info:
            query_author = getBiography.format(item['authorName'])
            birth = g.run(query_author).data()[0]['d.name']
            poetryList = []
            counter = len(item['titleName']) if len(item['titleName']) < 3 else 3
            for i in range(counter):
                poetry = {}
                poetry['title'] = item['titleName'][i]
                poetry['content'] = item['paragraphsName'][i]
                poetry['author'] = "【作者】" + item['authorName']
                poetryList.append(poetry)
            item_dict = {"selectType": '0',"authorInfo":birth,"poetryList":poetryList}
            result.append(item_dict)
    if search_data.selectType == "1":
        query = querys[search_data.selectType].format(search_data.selectValue)
        info = g.run(query).data()
        info = filter_for_title(info)
        for item in info:
            query_author = getBiography.format(item['authorName'])
            birth = g.run(query_author).data()[0]['d.name']
            poetryList = []
            counter = len(item['titleNames']) if len(item['titleNames']) < 3 else 3
            for i in range(counter):
                poetry = {}
                poetry['title'] = item['titleNames'][i]
                poetry['content'] = item['paragraphNames'][i]
                poetry['author'] = "【作者】" + item['authorName']
                poetryList.append(poetry)
            item_dict = {"selectType": '0', "authorInfo": birth, "poetryList": poetryList}
            result.append(item_dict)
    if search_data.selectType == "2":
        query = querys[search_data.selectType].format(search_data.selectValue)
        info = g.run(query).data()
        info = filter_for_title(info)
        for item in info:
            query_author = getBiography.format(item['authorName'])
            birth = g.run(query_author).data()[0]['d.name']
            poetryList = []
            counter = len(item['titleNames']) if len(item['titleNames']) < 3 else 3
            for i in range(counter):
                poetry = {}
                poetry['title'] = item['titleNames'][i]
                poetry['content'] = item['paragraphNames'][i]
                poetry['author'] = "【作者】" + item['authorName']
                poetryList.append(poetry)
            item_dict = {"selectType": '0', "authorInfo": birth, "poetryList": poetryList}
            result.append(item_dict)
    current_time_str = str(datetime.utcnow())
    dict_of = {"0":"作者查询","1":"诗句查询","2":"题目查询"}
    session_id = dict_of[search_data.selectType]
    # 计算 MD5 值
    md5_hash = hashlib.md5(current_time_str.encode()).hexdigest()
    new_data = historyModel(
        id = md5_hash,
        session_name="{}".format(md5_hash),
        session_id=session_id,
        question=search_data.selectValue,
        answer=str(result),
        create_id=1,
    )
    # 添加到数据库
    db.add(new_data)
    db.commit()
    db.refresh(new_data)
    response_data = {"info": result}
    return response_data


# 配置 Swagger UI 信息
app.openapi = {
    "info": Info(
        title="诗词管理系统",
        version="1.0.0",
        description="您的智能诗词专家",
    )
}

# 获取自定义的 OpenAPI 文档
def custom_openapi():
    if app.openapi_schema:
        return app.openapi_schema
    openapi_schema = get_openapi(
        title="诗词管理系统",
        version="1.0.0",
        description="您的智能诗词专家",
        routes=app.routes,
    )
    app.openapi_schema = openapi_schema
    return app.openapi_schema

app.openapi = custom_openapi
if __name__ == '__main__':
    uvicorn.run("app:app", host="0.0.0.0", port=8000, reload=True)


