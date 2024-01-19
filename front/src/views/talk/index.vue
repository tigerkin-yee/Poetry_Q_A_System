<template>
  <div>
    <mchat
      ref="mchat"
      :config="config"
      :chats="chats"
      :mine="mine"
      @removeChat="handleChatRemove"
      @talkUserClick="handleTalkUserClick"
      @talkClick="handleTalkClick"
      @chatInfo="handleChatInfo"
      @sendMessage="sendMessage"
      @loadHistory="handleHistory"
      @uploadEvent="handleUpload"
    >
      <mchat-right-box>
        <template slot-scope="props">
          <mchat-group-list
            v-if="props.chat.type == 'group'"
            :notices="props.chat.notices"
            :userList="props.chat.userList"
            :filter-user-method="filterUser"
            @click="handleRightEvent"
          ></mchat-group-list>
        </template>
      </mchat-right-box>
    </mchat>

  </div>
</template>

<script>
import MChat from '../../../lib/MChat.umd'
import CONST from "../../constant";
import {talkGpt} from "@/api/talk/search";

export default {
  name: "index",
  components:{
    MChat
  },
  data() {
    return {
      //获取主面板列表信息，下文会做进一步介绍
      config: {
        // 是否有下拉按钮
        downBtn: true,
        rightBox: true,
        // 简约模式
        brief: true,
        // 是否开启桌面消息提醒，即在浏览器之外的提醒
        notice: false,
        // 设定
        voice: true,
        //上传文件的扩展名
        fileExt:"",
        tabRemove:false,
        fixed:true,
      },
      //我的信息
      mine: CONST.mine,
      //会话
      chats: CONST.chats,
      // chats: [],

    };
  },
  created() {
    this.$store.dispatch('app/closeSideBar', { withoutAnimation: false })
  },
  methods: {
    filterUser(value, data) {
      if (!value) return true;
      return data.name.indexOf(value) !== -1;
    },
    fetchNotices() {
      return  CONST.notice_list;
    },
    handleChatRemove({ id, name, type }){
      console.log("事件名：removeChat。点击对话标签删除或择对话框关闭触发",item);
      let channels = this.chats;
      let len = channels.length;
      if (len < 1) return;
      let ary = [];
      for (let i = 0; i < len; i++) {
        let model = channels[i];
        if (model.id !== id) {
          ary.push(model);
        }
      }
      this.chats = ary;
    },

    handleHistory(data) {
      const {chat ,last, callback} = data;
      console.log("获取历史记录",data);
      let history = [
        {
          username: "历史记录",
          avatar: require("../../../public/avatar/temp2.jpg"),
          id: 1,
          type: "group",
          content: "audio[https://www.w3school.com.cn/i/horse.mp3]",
          cid: parseInt(Math.random() * 10, 10),
          mine: false,
          fromid: 3,
          timestamp: new Date(),
        },
      ];
      callback(history);
    },

    sendMessage(data) {
      console.log("发送内容", {data});
      const {mine, to, content, timestamp} = data;
      let message = {
        //消息来源用户名
        username: mine.username,
        //消息来源用户头像
        avatar: mine.avatar,
        //消息的来源ID（如果是私聊，则是用户id，如果是群聊，则是群组id）
        id: to.id,
        //聊天窗口来源类型，从发送消息传递的to里面获取
        type: to.type,
        //消息内容
        content,
        //消息id，可不传。除非你要对消息进行一些操作（如撤回）
        cid: 0,
        //是否我发送的消息，如果为true，则会显示在右方
        mine: true,
        //消息的发送者id（比如群组中的某个消息发送者），可用于自动解决浏览器多窗口时的一些问题
        fromid: mine.id,
        //服务端时间戳毫秒数。注意：如果你返回的是标准的 unix 时间戳，记得要 *1000
        timestamp,
      };
      //
      this.$refs.mchat.getMessage(message);
      // todo 发请求
      talkGpt(content).then(res=>{
        const chatMessage = res.chat;
        //自动回复
        let authReplay = {
          username: "july-meteor",
          avatar:require("../../../public/avatar/heiqi.png"),
          id: to.id,
          type: to.type,
          content: chatMessage ,
          cid: 0,
          mine: false,
          fromid: -1,
          timestamp: new Date(),
        };
        this.$im.emit("getMessage", authReplay);
      })

    },
    //添加回话
    handleAddChat() {
      let chatId = parseInt(Math.random() * 10, 10)
      let newChat = {
        id: chatId,
        name: "新会话",
        type: "friend",
        avatar: require("../../../public/avatar/temp2.jpg"),
      };
      this.chats.push(newChat);
    },
    handleDelChat() {
      this.chats.pop();
    },
    handleUpload(data,fn){
      console.log("文件上传",data);
    },
    handleTalkUserClick(item){
      console.log("事件名：talkUserClick。对话用户头像点击事件",item);
    },
    handleTalkClick(item){
      console.log("事件名：talkClick。对话内容点击事件",item);
    },
    handleChatInfo(item){
      console.log("事件名：chatInfo。点击窗口对话头像触发",item);
    },
  },
}
</script>

<style scoped>
/deep/.im-layer {
  width: 100%!important;
  height: 100%!important;
}
/deep/.m-icon-top{
  display: none!important;
}
/deep/.m-icon-minus{
  display: none!important;
}
/deep/.m-icon-maxus{
  display: none!important;
}
/deep/.m-icon-close{
  display: none!important;
}

/deep/.im-btn-close{
  display: none!important;
}
/deep/.im-chat-content{
  height: 372px;
}
</style>
