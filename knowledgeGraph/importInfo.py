#!/usr/bin/env python
# -*- coding: utf-8 -*-
# @Time    : 2024/1/11 21:14
# @Author  : 晚秋
# @File    : importInfo.py
# @Description : 文件作用注释
import os
import json
from py2neo import Graph,Node
desc_wirter = []
folder_path = "poems/poet"
g = Graph('http://localhost:7474', auth=('neo4j', 'zhangsan@123'))

#
def create_relationship(start_node, end_node, edges, rel_type, rel_name):
    '''创建关系函数'''
    for edge in edges:
        p = edge[0]
        q = edge[1]
        # 创建关系的 Cypher 语句
        query = "match(p:%s),(q:%s) where p.name='%s' and q.name='%s' create (p)-[rel:%s{name:'%s'}]->(q)" % (start_node, end_node, p, q, rel_type, rel_name)
        try:
            g.run(query) # 运行 Cypher 语句
            print('创建关系 {}-{}->{}'.format(p, rel_type, q))
        except Exception as e:
            print(e)
# # create_relationship('author', 'desc',desc_wirter , 'belong_of', '生平')
#
#
# """
# MATCH (a:author)
# WITH a.name AS authorName, COLLECT(a) AS nodes
# WHERE SIZE(nodes) > 1
# FOREACH (node IN nodes[1..] | DETACH DELETE node)
#     """
#
# """
# MATCH (a:desc)
# WITH a.name AS descName, COLLECT(a) AS nodes
# WHERE SIZE(nodes) > 1
# RETURN descName, SIZE(nodes) AS duplicateCount
# """


def deduplicate(rels_old):
    '''关系去重函数'''
    rels_new = []
    for each in rels_old:
        if each not in rels_new:
            rels_new.append(each)
    return rels_new



rep_title_author = []
rep_title_paragraphs = []
paragraphs = []
for filename in os.listdir(folder_path):
    if filename.endswith('.json'):
        file_path = os.path.join(folder_path, filename)
        print(filename,'开始')
        with open(file_path, 'r',encoding='utf-8') as file:
            data = json.load(file)
            for item in data:
                title = item['title']
                author = item['author']
                paragraph = item['paragraphs']
                paragraph = "".join(paragraph)
                rep_title_paragraphs.append([title,paragraph])
                rep_title_author.append([author,paragraph])
                # try:
                #     node = Node('title', name=title)
                #     g.create(node)
                # except:
                #     pass
                # try:
                #     node = Node('author', name=author)
                #     g.create(node)
                # except:
                #     pass
                # try:
                #     node = Node('paragraphs', name=paragraph)
                #     g.create(node)
                # except Exception  as e:
                #     print(e)


# rep_title_paragraphs = deduplicate(rep_title_paragraphs)
# create_relationship('author', 'paragraphs',rep_title_author , 'author_of2', '作者')
create_relationship('title', 'paragraphs',rep_title_paragraphs , 'content_of', '内容')


# def connect_nodes_by_name(all, rel_type, rel_name):

import spacy

nlp = spacy.load("zh_core_web_sm")
word1 = nlp("你知道静夜思是谁写的？")
word2 = nlp("李白是谁写的？")

similarity_score = word1.similarity(word2)
print(similarity_score)


