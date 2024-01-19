<template>
  <div class="app-container">
    <el-form :model="queryParams" ref="queryForm" size="small" :inline="true" label-width="68px">
      <el-form-item label="提问" prop="question">
        <el-input
          v-model="queryParams.question"
          placeholder="请输入提问"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="会话" prop="sessionName">
        <el-input
          v-model="queryParams.sessionName"
          placeholder="请输入提问"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item>
        <el-button type="primary" icon="el-icon-search" size="mini" @click="handleQuery">搜索</el-button>
        <el-button icon="el-icon-refresh" size="mini" @click="resetQuery">重置</el-button>
      </el-form-item>

    </el-form>
    <el-row :gutter="10" class="mb8">
      <el-col :span="1.5">
        <el-button
          type="danger"
          plain
          icon="el-icon-delete"
          size="mini"
          @click="clearAll"
        >清空历史记录</el-button>
      </el-col>
    </el-row>
    <el-table
      v-loading="loading"
      :data="list.slice((pageNum-1)*pageSize,pageNum*pageSize)"
      style="width: 100%;"
    >
      <el-table-column label="序号" type="index" align="center">
        <template slot-scope="scope">
          <span>{{(pageNum - 1) * pageSize + scope.$index + 1}}</span>
        </template>
      </el-table-column>
      <el-table-column label="会话" align="center" prop="sessionName" :show-overflow-tooltip="true" />
      <el-table-column label="提问" align="center" prop="question" :show-overflow-tooltip="true" />
      <el-table-column label="回答" align="center" prop="answer" :show-overflow-tooltip="true" />
      <el-table-column label="提问时间" align="center" prop="createTime" />
      <el-table-column label="操作" align="center" class-name="small-padding fixed-width">
        <template slot-scope="scope">
          <el-button
            size="mini"
            type="text"
            icon="el-icon-delete"
            @click="deleteInfo(scope.row)"
          >删除</el-button>
        </template>
      </el-table-column>
    </el-table>

    <pagination v-show="total>0" :total="total" :page.sync="pageNum" :limit.sync="pageSize" />
  </div>
</template>

<script>
import { page, deleteInfo ,clearAll} from "@/api/history/history";

export default {
  name: "History",
  data() {
    return {
      // 遮罩层
      loading: true,
      // 总条数
      total: 0,
      // 表格数据
      list: [],
      pageNum: 1,
      pageSize: 10,
      // 查询参数
      queryParams: {
        question: '',
        sessionName:''
      }
    };
  },
  created() {
    this.getList();
  },
  methods: {
    /** 查询登录日志列表 */
    getList() {
      this.loading = true;
      this.queryParams.pageSize = this.pageSize
      this.queryParams.pageNum = this.pageNum
      page(this.queryParams).then(response => {
        if (response.code===200){
          this.list = response.data.records;
          this.total = response.data.total;
        }
        this.loading = false;
      });
    },
    /** 搜索按钮操作 */
    handleQuery() {
      this.pageNum = 1;
      this.getList();
    },
    /** 重置按钮操作 */
    resetQuery() {
      this.resetForm("queryForm");
      this.handleQuery();
    },
    /** 强退按钮操作 */
    deleteInfo(row) {
      this.$modal.confirm('是否确认删除选中的记录').then(function() {
        return deleteInfo(row.id)
      }).then(() => {
        this.getList();
        this.$modal.msgSuccess("删除成功");
      }).catch(() => {});
    },
    clearAll() {
      this.$modal.confirm('是否确认清空历史记录，清空后无法找回').then(function() {
        return clearAll()
      }).then(() => {
        this.getList();
        this.$modal.msgSuccess("删除成功");
      }).catch(() => {});
    }
  }
};
</script>

