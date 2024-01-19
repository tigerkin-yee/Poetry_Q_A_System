package com.ruoyi.web.controller.faqHistory;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.ruoyi.common.base.Result;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.utils.SecurityUtils;
import com.ruoyi.project.faqHistory.domain.FaqHistory;
import com.ruoyi.project.faqHistory.service.FaqHistoryService;
import org.apache.commons.lang3.StringUtils;
import org.apache.poi.ss.formula.functions.T;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;

/**
 * @author Fang
 * @date 2024/1/13 15:57
 */
@RestController
@RequestMapping("faqHistory")
public class FaqHistoryController extends BaseController {

    @Resource
    private FaqHistoryService faqHistoryService;

    @RequestMapping("page")
    public AjaxResult page(@RequestParam(value = "pageSize", defaultValue = "10") String pageSize,
                       @RequestParam(value = "pageNum", defaultValue = "1") String pageNum,
                       @RequestBody FaqHistory faqHistory) {
        Page<FaqHistory> page = new Page<>( Integer.parseInt(pageNum),Integer.parseInt(pageSize));
        LambdaQueryWrapper<FaqHistory> wrapper = new LambdaQueryWrapper<>();
        wrapper.eq(FaqHistory::getCreateId, SecurityUtils.getUserId());
        wrapper.like(StringUtils.isNotBlank(faqHistory.getQuestion()),FaqHistory::getQuestion,faqHistory.getQuestion());
        wrapper.like(StringUtils.isNotBlank(faqHistory.getSessionName()),FaqHistory::getSessionName,faqHistory.getSessionName());
        wrapper.orderByDesc(FaqHistory::getCreateTime);
        Page<FaqHistory> historyPage = faqHistoryService.page(page,wrapper);
        return AjaxResult.success(historyPage);
    }

    @RequestMapping("/delete/{id}")
    public AjaxResult page(@PathVariable String id) {
        faqHistoryService.removeById(id);
        return AjaxResult.success();
    }


    @RequestMapping("/clearAll")
    public AjaxResult clearAll() {
        LambdaQueryWrapper<FaqHistory> wrapper = new LambdaQueryWrapper<>();
        wrapper.eq(FaqHistory::getCreateId,SecurityUtils.getUserId());
        faqHistoryService.remove(wrapper);
        return AjaxResult.success();
    }
}
