package com.ruoyi.project.faqHistory.domain;

import com.baomidou.mybatisplus.annotation.*;
import com.baomidou.mybatisplus.extension.activerecord.Model;
import com.fasterxml.jackson.annotation.JsonFormat;
import com.ruoyi.common.base.BaseEntity;
import lombok.Data;
import org.apache.poi.ss.formula.functions.T;
import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

@Data
@TableName("faq_history")
public class FaqHistory extends Model {

    @TableId(type = IdType.ASSIGN_ID)
    private String id;

    @TableField("session_name")
    private String sessionName;

    @TableField("session_id")
    private String sessionId;

    @TableField("question")
    private String question;

    @TableField("answer")
    private String answer;

   // @TableField("is_delete")
   // private String isDelete;

    @TableField("create_id")
    private Long createId;
    @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss", timezone = "GMT+8")
    @TableField("create_time")
    private Date createTime;


}
