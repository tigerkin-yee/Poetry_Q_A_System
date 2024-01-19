#!/usr/bin/env python
# -*- coding: utf-8 -*-
# @Time    : 2024/1/16 15:57
# @Author  : 晚秋
# @File    : info.py
# @Description : 文件作用注释
import pickle

with open('my_dict.pkl', 'rb') as file:
    loaded_dict = pickle.load(file)

with open("ac_automaton.pkl", "rb") as file:
    region_tree = pickle.load(file)




def check_words(words, question):
    # 疑问词是否出现在提问中
    for word in words:
        if word in question:
            # print(word + ' 出现在提问中')
            return True
    return False


def get_query(question):
    question_entity = []
    for each in region_tree.iter(question):
        entity = each[1][1]
        question_entity.append(entity)

    author_qwds = ['诗人', '作者', '写的', '的人', '作诗', "什么人", "人", "作者为", "谁", "是谁"]  # 用来标识简单的提问诗人的关系

    shengping_qwds = ['生平', "经历", "信息", "生", "阅历", "是谁"]  # 提问生平

    title_qwds = ["诗", "什么诗", "写过", "写", "作过"]  # 提问作者的诗

    gra_quds = ["内容", "原文", "诗句内容", "诗句", "写了"]  # 提问内容

    from_quds = ["出自", "来自", "叫什么", "叫", "自", "诗歌", "题目", "是什么诗", "哪首诗", "哪首"]  # 提问诗歌名
    # 构建新数组
    from_is = ["是不是","有没有","不","写过"]
    question_entity = [word for word in question_entity if
                       not any(word in other_word for other_word in question_entity if other_word != word)]

    question_entity_dict = {each: loaded_dict[each] for each in question_entity}
    types = []
    output = {}
    output['args'] = question_entity_dict
    for each in question_entity_dict.values():
        types.extend(each)
    question_types = []
    if check_words(author_qwds, question) and ('title' in types):
        question_type = 'title_author'  # 通过题目找到作者
        question_types.append(question_type)
    elif check_words(from_is, question) and ('title' in types and 'author' in types):
        question_type = 'is_author_title'
        question_types.append(question_type)
    elif check_words(from_is, question) and ('title' in types and 'paragraphs' in types):
        question_type = 'is_paragraphs_title'
        question_types.append(question_type)
    elif check_words(shengping_qwds,question) and ('author' in types):
        question_type = 'author_shengping' # 通过作者找生平
        question_types.append(question_type)
    elif check_words(title_qwds,question) and ('author' in types):
        question_type = 'author_title'  # 通过作者找他写过的诗
        question_types.append(question_type)
    elif check_words(gra_quds,question) and ('title' in types):
        question_type = 'title_gra' # 通过题目查找诗词
        question_types.append(question_type)
    elif check_words(from_quds,question) and ('paragraphs' in types):
        question_type = 'gra_title' # 通过诗句找题目
        question_types.append(question_type)
    else:
        question_types.append([])
    output["question_types"] = question_types
    return output


