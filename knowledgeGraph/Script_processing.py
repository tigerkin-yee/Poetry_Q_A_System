#!/usr/bin/env python
# -*- coding: utf-8 -*-
# @Time    : 2024/1/18 16:43
# @Author  : 晚秋
# @File    : Script_processing.py
# @Description : 处理数据的脚本
import json
import os
import pickle
import ahocorasick
from tqdm import tqdm
# 题目 作者 生平 诗词内容等
all_titles = []
all_authors = []
all_paragraphs  = []


folder_path = "poems/poet"
for filename in os.listdir(folder_path):
    if filename.endswith('.json'):
        file_path = os.path.join(folder_path, filename)
        print(filename,'开始')
        with open(file_path, 'r',encoding='utf-8') as file:
            data = json.load(file)
            for item in data:

                paragraph = [ i.replace("。","") for i in "".join(item['paragraphs']).replace("。","，").split("，")][0:-1]
                all_paragraphs.extend(paragraph)
                all_titles.append(item["title"])




author_path = "poems/authors"
for filename in os.listdir(author_path):
    if filename.endswith('.json'):
        file_path = os.path.join(author_path, filename)
        print(filename, '开始')
        with open(file_path, 'r', encoding='utf-8') as file:
            data = json.load(file)
            for item in data:
                all_authors.append(item["name"])

region_words = set(all_titles + all_authors + all_paragraphs)
wdtype_dict = dict()
for word in tqdm(region_words):
    wdtype_dict[word] = []
    if word in all_titles:
        wdtype_dict[word].append('title')
    if word in all_authors:
        wdtype_dict[word].append('author')
    if word in all_paragraphs:
        wdtype_dict[word].append('paragraphs')
print(wdtype_dict)
def build_actree(wordlist):
    actree = ahocorasick.Automaton()
    for index, word in enumerate(wordlist):
        actree.add_word(word, (index, word))
    actree.make_automaton()
    return actree
region_tree = build_actree(list(region_words))
with open('my_dict.pkl', 'wb') as file:
    pickle.dump(wdtype_dict, file)
with open("ac_automaton.pkl", "wb") as file:
    pickle.dump(region_tree, file)