import request from '@/utils/request'


export function talkGpt(chat) {
  return request({
    url: 'http://127.0.0.1:8000/get_chat',
    method: 'get',
    params: { chat }
  })
}


