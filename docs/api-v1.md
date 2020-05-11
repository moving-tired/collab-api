# API Documentation

  * [CollabWeb.User.SessionController](#collabweb-user-sessioncontroller)
    * [login](#collabweb-user-sessioncontroller-login)
  * [CollabWeb.User.UserController](#collabweb-user-usercontroller)
    * [create](#collabweb-user-usercontroller-create)
    * [show](#collabweb-user-usercontroller-show)

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
x-request-id: Fg3St3-m7DZ9RngAAAZm
access-control-allow-origin: *
access-control-expose-headers: 
access-control-allow-credentials: true
```
* __Response body:__
```json
{
  "status": "ok",
  "data": {
    "token": "eyJhbGciOiJIUzUxMiIsInR5cCI6IkpXVCJ9.eyJhdWQiOiJjb2xsYWIiLCJleHAiOjE1OTE1NzcxMjksImlhdCI6MTU4OTE1NzkyOSwiaXNzIjoiY29sbGFiIiwianRpIjoiNjQ2MDg3YTItYzVhNy00Mzg4LWJkMWEtYjQ5MTVmNTA3MzhjIiwibmJmIjoxNTg5MTU3OTI4LCJzdWIiOiIxNjAiLCJ0eXAiOiJhY2Nlc3MifQ.DQJ9aPaxUOhBsTIdSEkOv3vJ4k-58WF9kYzFPJHQUhGYS-plPSSLOFVkmk9jv7HO2fh2b0bSX1BFZaIBcE2yWg",
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
x-request-id: Fg3St4WidBHBqs4AAAam
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
  "birthday": "2020-05-11T00:45:29.149048Z"
}
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: Fg3St4Ltz_jkP7kAAANh
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
    "id": 166,
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
x-request-id: Fg3St39btMhDpVUAAAOD
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

