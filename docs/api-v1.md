# API Documentation

  * [CollabWeb.User.SessionController](#collabweb-user-sessioncontroller)
    * [login](#collabweb-user-sessioncontroller-login)
  * [CollabWeb.User.UserController](#collabweb-user-usercontroller)
    * [create](#collabweb-user-usercontroller-create)

## CollabWeb.User.SessionController
### <a id=collabweb-user-sessioncontroller-login></a>login
#### create/2 returns 200 when credentials are valid
##### Request
* __Method:__ POST
* __Path:__ /api/v1/users/sign_in
* __Request headers:__
```
content-type: multipart/mixed; boundary=plug_conn_test
```
* __Request body:__
```json
{
  "password": "123456",
  "email": "john@gmail.com"
}
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: Fg3OKJ6t0klRxdgAAAJj
access-control-allow-origin: *
access-control-expose-headers: 
access-control-allow-credentials: true
```
* __Response body:__
```json
{
  "status": "ok",
  "data": {
    "token": "eyJhbGciOiJIUzUxMiIsInR5cCI6IkpXVCJ9.eyJhdWQiOiJjb2xsYWIiLCJleHAiOjE1OTE1NzIxMTcsImlhdCI6MTU4OTE1MjkxNywiaXNzIjoiY29sbGFiIiwianRpIjoiZmYwODQwNmUtOGFhOC00ZGZlLWE0YWUtZGZmYmZmYjU1NWFjIiwibmJmIjoxNTg5MTUyOTE2LCJzdWIiOiIxMDIiLCJ0eXAiOiJhY2Nlc3MifQ.pFALgwAYNROnNR7M69jrHxEB6xYSCIE-79WNB3HEvr08Z6iAVJbF1lHbc4RJdvtq9t-F81j2kLarJ2cSk6IGsA",
    "name": "John Smith"
  }
}
```

#### create/2 returns 401 when email is invalid
##### Request
* __Method:__ POST
* __Path:__ /api/v1/users/sign_in
* __Request headers:__
```
content-type: multipart/mixed; boundary=plug_conn_test
```
* __Request body:__
```json
{
  "password": "123456",
  "email": "johnX@gmail.com"
}
```

##### Response
* __Status__: 401
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: Fg3OKKKLHFmHsykAAAKj
access-control-allow-origin: *
access-control-expose-headers: 
access-control-allow-credentials: true
```
* __Response body:__
```json
{
  "status": "unauthenticated"
}
```

## CollabWeb.User.UserController
### <a id=collabweb-user-usercontroller-create></a>create
#### create/2 returns 200 when credentials are valid
##### Request
* __Method:__ POST
* __Path:__ /api/v1/users
* __Request headers:__
```
content-type: multipart/mixed; boundary=plug_conn_test
```
* __Request body:__
```json
{
  "phone": "+551999999999",
  "password": "123456",
  "name": "Test name",
  "email": "test@gmail.com",
  "birthday": "2020-05-10T23:21:57.351118Z"
}
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: Fg3OKJ106zaDHVwAAAJD
access-control-allow-origin: *
access-control-expose-headers: 
access-control-allow-credentials: true
```
* __Response body:__
```json
{
  "status": "ok",
  "data": {
    "phone": "+551999999999",
    "name": "Test name",
    "id": 104,
    "email": "test@gmail.com"
  }
}
```

