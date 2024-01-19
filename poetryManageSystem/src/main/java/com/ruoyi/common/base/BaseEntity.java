package com.ruoyi.common.base;


import com.baomidou.mybatisplus.annotation.*;
import com.baomidou.mybatisplus.extension.activerecord.Model;
import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.Data;

import java.util.Date;

/**
 * 实体类基类
 *
 * @author ryxc
 * @date 2022/7/2 23:42
 **/
@Data
public class BaseEntity<T extends Model<T>> extends Model<T> {

    @TableId(type = IdType.ASSIGN_ID)
    private String id;

    /**
     * 是否删除 0 未删除 1 已删除
     **/
    @TableField("is_delete")
    @TableLogic(value = "0", delval = "1")
    private String isDelete;

    /**
     * 创建人ID
     **/
    @TableField(fill = FieldFill.INSERT)
    private Long createBy;

    /**
     * 创建时间
     **/
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss", timezone = "GMT+8")
    @TableField(fill = FieldFill.INSERT)
    private Date createTime;

    /**
     * 最后修改人ID
     **/
    @TableField(fill = FieldFill.INSERT_UPDATE)
    private Long updateBy;

    /**
     * 最后修改时间
     **/
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss", timezone = "GMT+8")
    @TableField(fill = FieldFill.INSERT_UPDATE)
    private Date updateTime;

}
