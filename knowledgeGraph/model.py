#!/usr/bin/env python
# -*- coding: utf-8 -*-
# @Time    : 2024/1/18 9:19
# @Author  : 晚秋
# @File    : model.py
# @Description : 文件作用注释
from pydantic import BaseModel
from sqlalchemy import Column, Integer, String, Text, DateTime, BigInteger, create_engine
from sqlalchemy.ext.declarative import declarative_base
from datetime import datetime

from sqlalchemy.orm import sessionmaker

SQLALCHEMY_DATABASE_URL = "mysql+pymysql://root:root@localhost/info"
# 注意：将username和password替换为您的数据库用户名和密码

engine = create_engine(SQLALCHEMY_DATABASE_URL)
SessionLocal = sessionmaker(autocommit=False, autoflush=False, bind=engine)

Base = declarative_base()

class SearchData(BaseModel):
    selectType: str
    selectValue: str

def get_db():
    db = SessionLocal()
    try:
        yield db
    finally:
        db.close()

class historyModel(Base):
    __tablename__ = "faq_history"

    id = Column(Integer, primary_key=True, index=True, autoincrement=True)
    session_name = Column(String, index=True)
    session_id = Column(String, index=True)
    question = Column(String)
    answer = Column(Text)
    create_id = Column(BigInteger)
    create_time = Column(DateTime, default=datetime.utcnow)