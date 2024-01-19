import request from '@/utils/request'


export function page(query) {
  return request({
    url: '/faqHistory/page?pageSize='+query.pageSize+"&pageNum="+query.pageNum,
    method: 'post',
    data: query
  })
}

export function deleteInfo(id) {
  return request({
    url: '/faqHistory/delete/' + id,
    method: 'delete'
  })
}

export function clearAll() {
  return request({
    url: '/faqHistory/clearAll',
    method: 'delete'
  })
}
