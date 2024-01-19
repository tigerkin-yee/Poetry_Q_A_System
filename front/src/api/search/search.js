import request from '@/utils/request'


export function searchInfo(query) {
  return request({
    url: 'http://127.0.0.1:8000/search',
    method: 'post',
    data: query
  })
}


