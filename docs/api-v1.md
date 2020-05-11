# API Documentation

  * [CollabWeb.User.SessionController](#collabweb-user-sessioncontroller)
    * [login](#collabweb-user-sessioncontroller-login)
  * [CollabWeb.User.UserController](#collabweb-user-usercontroller)
    * [create](#collabweb-user-usercontroller-create)
    * [show](#collabweb-user-usercontroller-show)
    * [update](#collabweb-user-usercontroller-update)

## CollabWeb.User.SessionController
### <a id=collabweb-user-sessioncontroller-login></a>login
#### signin/2 returns 200 when credentials are valid
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
x-request-id: Fg3VXAYRswiHsykAAABI
access-control-allow-origin: *
access-control-expose-headers: 
access-control-allow-credentials: true
```
* __Response body:__
```json
{
  "status": "ok",
  "data": {
    "token": "eyJhbGciOiJIUzUxMiIsInR5cCI6IkpXVCJ9.eyJhdWQiOiJjb2xsYWIiLCJleHAiOjE1OTE1ODAwMzQsImlhdCI6MTU4OTE2MDgzNCwiaXNzIjoiY29sbGFiIiwianRpIjoiODIzZDZmYTctZjNjNC00OTZkLTg4MGEtNTNlZmNhNDc5NWUyIiwibmJmIjoxNTg5MTYwODMzLCJzdWIiOiI0NTQiLCJ0eXAiOiJhY2Nlc3MifQ.DWN_HALuhpDnEht4WAsY_ME-_DHRm_6ykJSScUaiFjqJC_7vC3dYufDM7j8OQ2FM1WbmmRGbmGHgm9YcfvHrOA",
    "name": "John Smith"
  }
}
```

#### signin/2 returns 401 when email is invalid
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
x-request-id: Fg3VXAPKJsXHtsQAAABC
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
#### user/2 returns 200 when credentials are valid
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
  "birthday": "2020-05-11T01:33:54.953296Z"
}
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: Fg3VXBJbTizluDMAAAKl
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
    "id": 455,
    "email": "test@gmail.com"
  }
}
```

### <a id=collabweb-user-usercontroller-show></a>show
#### user/2 returns 200 when we try to get the user
##### Request
* __Method:__ GET
* __Path:__ /api/v1/users/1

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: Fg3VXAZRcoHTbfAAAACC
access-control-allow-origin: *
access-control-expose-headers: 
access-control-allow-credentials: true
```
* __Response body:__
```json
{
  "status": "ok",
  "data": {
    "phone": null,
    "name": "John Smith",
    "id": 1,
    "email": "john@gmail.com"
  }
}
```

#### user/2 returns 404 when we try to get the user that not exists
##### Request
* __Method:__ GET
* __Path:__ /api/v1/users/12344354

##### Response
* __Status__: 404
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: Fg3VXAYRswXgNwQAAADE
access-control-allow-origin: *
access-control-expose-headers: 
access-control-allow-credentials: true
```
* __Response body:__
```json
{
  "status": "not_found"
}
```

### <a id=collabweb-user-usercontroller-update></a>update
#### user/2 returns 200 when we try to update a user
##### Request
* __Method:__ PUT
* __Path:__ /api/v1/users/1
* __Request headers:__
```
content-type: multipart/mixed; boundary=plug_conn_test
```
* __Request body:__
```json
{
  "phone": "+551999999999",
  "password": "123456",
  "name": "Test 2",
  "email": "test@gmail.com",
  "birthday": "2020-05-11T01:33:54.699576Z"
}
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: Fg3VXAPeF0_laOIAAABi
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
    "name": "Test 2",
    "id": 1,
    "email": "test@gmail.com"
  }
}
```

#### user/2 returns 200 when we try to update a user and it doesn't exist
##### Request
* __Method:__ PUT
* __Path:__ /api/v1/users/2
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
  "birthday": "2020-05-11T01:33:54.755457Z"
}
```

##### Response
* __Status__: 404
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: Fg3VXAaQt80oHEsAAADk
access-control-allow-origin: *
access-control-expose-headers: 
access-control-allow-credentials: true
```
* __Response body:__
```json
{
  "status": "not_found"
}
```

