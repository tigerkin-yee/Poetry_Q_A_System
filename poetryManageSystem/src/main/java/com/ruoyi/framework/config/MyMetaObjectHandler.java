package com.ruoyi.framework.config;

import com.baomidou.mybatisplus.core.handlers.MetaObjectHandler;
import com.ruoyi.common.utils.SecurityUtils;
import org.apache.ibatis.reflection.MetaObject;
import org.springframework.context.annotation.Configuration;

import java.util.Date;

/**
 * 自定义自动填充
 * @author ryxc
 * @date 2022/7/3 1:06
 **/
@Configuration
public class MyMetaObjectHandler implements MetaObjectHandler {

    @Override
    public void insertFill(MetaObject metaObject) {
        setFieldValByName("createTime", new Date(), metaObject);
        setFieldValByName("createBy", SecurityUtils.getUserId(),metaObject);
        setFieldValByName("updateTime",new Date(),metaObject);
        setFieldValByName("updateBy",  SecurityUtils.getUserId(),metaObject);
    }

    @Override
    public void updateFill(MetaObject metaObject) {
        setFieldValByName("updateTime",new Date(),metaObject);
        setFieldValByName("updateBy", SecurityUtils.getUserId(),metaObject);
    }
}
