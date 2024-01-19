#!/usr/bin/env python
# -*- coding: utf-8 -*-
# @Time    : 2024/1/16 16:51
# @Author  : 晚秋
# @File    : Ai.py
# @Description : 得不到的内容进行ai解答
import json
import requests


class ChatBot:
    def __init__(self):
        self.api_key = "13Ao5gKAs7dvTDGmjG7AOQv8"
        self.secret_key = "UMkfukwm6iIbcGdUf6MiSd1c6DfWX0gV"
        self.access_token = self.get_access_token()
        self.url = "https://aip.baidubce.com/rpc/2.0/ai_custom/v1/wenxinworkshop/chat/eb-instant?access_token=" + self.access_token

    def chat(self,user_input):
            # 注意 message 必须是奇数条
            payload = json.dumps({
                "messages": [
                    {
                        "role": "user",
                        "content": user_input
                    }
                ]
            })
            headers = {'Content-Type': 'application/json'}
            response = requests.post(self.url, headers=headers, data=payload).json()
            return response['result']

    def get_access_token(self):
        url = "https://aip.baidubce.com/oauth/2.0/token"
        params = {"grant_type": "client_credentials", "client_id": self.api_key, "client_secret": self.secret_key}
        return str(requests.post(url, params=params).json().get("access_token"))
