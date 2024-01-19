#!/usr/bin/env python
# -*- coding: utf-8 -*-
# @Time    : 2024/1/15 22:02
# @Author  : 晚秋
# @File    : test2.py
# @Description : 文件作用注释，获取到语句中的内容，进行实体获取标注

def filter_dict(input_dict):
    result_list = []
    for items in  input_dict:
            flag = 1
            if len(items["paragraphsName"]) !=len(items["titleName"]):
                flag = 0
            for item in items.values():
                if len(item) == 0:
                    flag = 0
            if flag == 1:
                result_list.append(items)

    return result_list

def filter_for_title(input_dict):
    result_list = []
    for items in  input_dict:
            flag = 1
            if len(items["paragraphNames"]) !=len(items["titleNames"]):
                flag = 0
            for item in items.values():
                if len(item) == 0:
                    flag = 0
            if flag == 1:
                result_list.append(items)

    return result_list

