<template>
  <div class="app-container" ref="highlightedContent">
    <el-row>
      <div style="align-items: center;display: flex;justify-content: center">
        <el-input placeholder="请输入内容" v-model="queryParams.selectValue" class="input-with-select" style="width:30%;">
          <el-select v-model="queryParams.selectType" style="width: 10%" slot="prepend" placeholder="请选择">
            <el-option label="作者" value="0"></el-option>
            <el-option label="题目" value="1"></el-option>
            <el-option label="诗句" value="2"></el-option>

          </el-select>
          <el-button slot="append" icon="el-icon-search" @click="searchInfo"></el-button>
        </el-input>
      </div>
    </el-row>
    <el-row style="padding: 10px 100px">
      <template v-if="searchResults && searchResults.length > 0">
        <template v-for="searchResult in searchResults">
          <div>
            <div>
              <h1><strong>作者生平</strong></h1>
              <span class="text">{{ searchResult.authorInfo }}</span>
            </div>
            <el-divider></el-divider>
            <div>
              <h1><strong>诗词</strong></h1>
              <div v-if="searchResult.poetryList && searchResult.poetryList.length > 0">
                <template v-for="(item, index) in searchResult.poetryList">
                  <div style="text-align: center">
                    <span class="text-title">{{ item.title }}</span><br/>
                    <span class="text-author">{{ item.author }}</span><br/>
                    <span class="text">{{ item.content }}</span>
                    <el-divider style="border-width: 2px;"></el-divider>
                  </div>
                </template>
              </div>
            </div>
          </div>
        </template>
      </template>

      <div v-if="searchResult">
        <div>
          <h1><strong>检索结果</strong></h1>
          <div v-if="searchResult && searchResult.poetryList && searchResult.poetryList.length>0">
            <template v-for="(item,index) in searchResult.poetryList">
              <div style="text-align: center">
                <span class="text-title">{{item.title}}</span><br/>
                <span class="text-author">{{item.author}}</span><br/>
                <span class="text">{{item.content}}</span>
                <el-divider></el-divider>
              </div>
            </template>
          </div>
        </div>
      </div>
    </el-row>
  </div>
</template>

<script>
import { searchInfo } from "@/api/search/search";
import Mark from 'mark.js';
export default {
  name: "Search",
  data() {
    return {
      // 遮罩层
      loading: true,
      // 查询参数
      queryParams: {
        selectType: '',
        selectValue:''
      },
      searchResults:[]
    };
  },
  created() {
  },
  methods: {
    searchInfo() {

      // todo

      this.loading = true;
      searchInfo(this.queryParams).then(response => {
        this.loading = false;
        const poets = response.info;
        console.log(response)
        this.searchResults=poets
      });
      this.highlightSearchInput();
    },
    highlightSearchInput() {
      const highlightedContent = this.$refs.highlightedContent;
      console.log(highlightedContent)
      if (highlightedContent) {
        const instance = new Mark(highlightedContent);
        instance.mark(this.queryParams.selectValue);
      }
      },
  }
};
</script>

<style>
.el-select .el-input {
  width: 100px;
}
.input-with-select .el-input-group__prepend {
  background-color: #fff;
}
.text{
  font-family: auto;
  white-space: pre-wrap;
}
.text-title{
  font-size: medium;
  font-weight: inherit;
}

.text-author{
  font-size: small;
  color: #97a8be;
}
</style>
