import request from '@/request'

export function login(account, password) {
  const data = {
    account,
    password
  }
  return request({
    url: '/login',
    method: 'post',
    data
  })
}

export function logout(token) {
  return request({
    headers: {'Authorization': token},
    url: '/logout',
    method: 'get'
  })
}

export function getUserInfo(token) {
  return request({
    headers: {'Authorization': token},
    url: '/users/currentUser',
    method: 'Post'
  })
}

export function register(account, nickname, password) {
  const data = {
    account,
    nickname,
    password
  }
  return request({
    url: '/register',
    method: 'post',
    data
  })

}

export function register1(userForm) {
  const data = {
    account:userForm.account,
    nickname:userForm.nickname,
    password:userForm.password,
    avatar:userForm.avatar
  }
  //console.log(userForm.avatar)
  return request({
    url: '/register',
    method: 'post',
    data
  })
}