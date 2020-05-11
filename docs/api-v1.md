# API Documentation

  * [CollabWeb.User.SessionController](#collabweb-user-sessioncontroller)
    * [login](#collabweb-user-sessioncontroller-login)
  * [CollabWeb.User.UserController](#collabweb-user-usercontroller)
    * [create](#collabweb-user-usercontroller-create)
    * [show](#collabweb-user-usercontroller-show)
    * [update](#collabweb-user-usercontroller-update)

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
x-request-id: Fg3VTDhl4TCs_McAAAJj
access-control-allow-origin: *
access-control-expose-headers: 
access-control-allow-credentials: true
```
* __Response body:__
```json
{
  "status": "ok",
  "data": {
    "token": "eyJhbGciOiJIUzUxMiIsInR5cCI6IkpXVCJ9.eyJhdWQiOiJjb2xsYWIiLCJleHAiOjE1OTE1Nzk5NjYsImlhdCI6MTU4OTE2MDc2NiwiaXNzIjoiY29sbGFiIiwianRpIjoiNTUyNDkzOTQtN2U3MS00NGQyLTllZTMtYzliYzI0MGVkOWM0IiwibmJmIjoxNTg5MTYwNzY1LCJzdWIiOiI0NDEiLCJ0eXAiOiJhY2Nlc3MifQ.4j79IMfVkh7ynCdcy9tAeUZyHcSL2D7JFRlKKEUQP5ec0ihWHl51V0P1BFHJvhKWWvtsYeNJF-6hRnIyFOQ81g",
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
x-request-id: Fg3VTEvDvPJaPqUAAAMB
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
  "birthday": "2020-05-11T01:32:46.853858Z"
}
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: Fg3VTDhmLVzlaOIAAAGE
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
    "id": 445,
    "email": "test@gmail.com"
  }
}
```

### <a id=collabweb-user-usercontroller-show></a>show
#### create/2 returns 200 when we try to get the user
##### Request
* __Method:__ GET
* __Path:__ /api/v1/users/1

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: Fg3VTDyWX2LgNwQAAAGk
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

#### create/2 returns 404 when we try to get the user that not exists
##### Request
* __Method:__ GET
* __Path:__ /api/v1/users/12344354

##### Response
* __Status__: 404
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: Fg3VTDuDuleHsykAAACC
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
#### create/2 returns 200 when we try to update a user
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
  "birthday": "2020-05-11T01:32:47.182807Z"
}
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: Fg3VTErrw_soHEsAAALh
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

#### create/2 returns 200 when we try to update a user and it doesn't exist
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
  "birthday": "2020-05-11T01:32:46.956018Z"
}
```

##### Response
* __Status__: 404
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: Fg3VTD1oGb7TbfAAAADC
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

