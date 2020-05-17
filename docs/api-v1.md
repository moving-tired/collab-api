# API Documentation

  * [CollabWeb.Task.TaskController](#collabweb-task-taskcontroller)
    * [create](#collabweb-task-taskcontroller-create)
    * [show](#collabweb-task-taskcontroller-show)
    * [update](#collabweb-task-taskcontroller-update)
  * [CollabWeb.User.SessionController](#collabweb-user-sessioncontroller)
    * [login](#collabweb-user-sessioncontroller-login)
  * [CollabWeb.User.UserController](#collabweb-user-usercontroller)
    * [create](#collabweb-user-usercontroller-create)
    * [show](#collabweb-user-usercontroller-show)
    * [update](#collabweb-user-usercontroller-update)

## CollabWeb.Task.TaskController
### <a id=collabweb-task-taskcontroller-create></a>create
#### task/2 returns 200 when we create a task
##### Request
* __Method:__ POST
* __Path:__ /api/v1/tasks
* __Request headers:__
```
content-type: multipart/mixed; boundary=plug_conn_test
```
* __Request body:__
```json
{
  "to_date": "2020-05-17T02:03:32.428525Z",
  "name": "Test name",
  "location": {
    "longitude": 11.1,
    "latitude": 11.1
  },
  "description": "description",
  "created_by_id": "1"
}
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: Fg-udVP9K8nCpWgAAACF
access-control-allow-origin: *
access-control-expose-headers: 
access-control-allow-credentials: true
```
* __Response body:__
```json
{
  "status": "ok",
  "data": {
    "to_date": "2020-05-17T02:03:32Z",
    "name": "Test name",
    "location": {
      "longitude": 11.1,
      "latitude": 11.1
    },
    "id": 95,
    "description": "description",
    "created_by_id": 1
  }
}
```

### <a id=collabweb-task-taskcontroller-show></a>show
#### task/2 returns 200 when we try to get the task
##### Request
* __Method:__ GET
* __Path:__ /api/v1/tasks/1

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: Fg-udVR3b3TkP7kAAAAI
access-control-allow-origin: *
access-control-expose-headers: 
access-control-allow-credentials: true
```
* __Response body:__
```json
{
  "status": "ok",
  "data": {
    "to_date": "2020-05-01T11:11:11Z",
    "name": "test task",
    "location": {},
    "id": 1,
    "description": "description",
    "created_by_id": 682
  }
}
```

#### task/2 returns 404 when we try to get the task that not exists
##### Request
* __Method:__ GET
* __Path:__ /api/v1/tasks/12344354

##### Response
* __Status__: 404
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: Fg-udVWmaXu5dEcAAAIC
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

### <a id=collabweb-task-taskcontroller-update></a>update
#### task/2 returns 200 when we try to update a task
##### Request
* __Method:__ PUT
* __Path:__ /api/v1/tasks/1
* __Request headers:__
```
content-type: multipart/mixed; boundary=plug_conn_test
```
* __Request body:__
```json
{
  "name": "Test name2",
  "description": "description2"
}
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: Fg-udVMxxEUlJRoAAAHi
access-control-allow-origin: *
access-control-expose-headers: 
access-control-allow-credentials: true
```
* __Response body:__
```json
{
  "status": "ok",
  "data": {
    "to_date": "2020-05-01T11:11:11Z",
    "name": "Test name2",
    "location": {},
    "id": 1,
    "description": "description2",
    "created_by_id": 679
  }
}
```

#### task/2 returns 200 when we try to update a task with location
##### Request
* __Method:__ PUT
* __Path:__ /api/v1/tasks/1
* __Request headers:__
```
content-type: multipart/mixed; boundary=plug_conn_test
```
* __Request body:__
```json
{
  "name": "Test name2",
  "location": {
    "longitude": 11.1,
    "latitude": 11.1
  },
  "description": "description2"
}
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: Fg-udVTwMbPBqs4AAAGn
access-control-allow-origin: *
access-control-expose-headers: 
access-control-allow-credentials: true
```
* __Response body:__
```json
{
  "status": "ok",
  "data": {
    "to_date": "2020-05-01T11:11:11Z",
    "name": "Test name2",
    "location": {
      "longitude": 11.1,
      "latitude": 11.1
    },
    "id": 1,
    "description": "description2",
    "created_by_id": 683
  }
}
```

#### task/2 returns 404 when we try to update a task and it doesn't exist
##### Request
* __Method:__ PUT
* __Path:__ /api/v1/tasks/22222
* __Request headers:__
```
content-type: multipart/mixed; boundary=plug_conn_test
```
* __Request body:__
```json
{
  "name": "Test name2",
  "description": "description2"
}
```

##### Response
* __Status__: 404
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: Fg-udUjdjlogF7IAAAEG
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
x-request-id: Fg-udUqwPBNqyLgAAAFn
access-control-allow-origin: *
access-control-expose-headers: 
access-control-allow-credentials: true
```
* __Response body:__
```json
{
  "status": "ok",
  "data": {
    "token": "eyJhbGciOiJIUzUxMiIsInR5cCI6IkpXVCJ9.eyJhdWQiOiJjb2xsYWIiLCJleHAiOjE1OTIxMDAyMTIsImlhdCI6MTU4OTY4MTAxMiwiaXNzIjoiY29sbGFiIiwianRpIjoiM2QxNjRiZWEtMWEyYy00YzFjLThiYjUtOGQwMTI5NDY1MjkzIiwibmJmIjoxNTg5NjgxMDExLCJzdWIiOiI2NzgiLCJ0eXAiOiJhY2Nlc3MifQ.-DfTFOEs6xTsAspb2QW3bWoCP2_pUcLKlcxclN98O_ax6UL7zffoYF3Bb43SUqQS4YfYqI7zLNuYlsKqEvp-ug",
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
x-request-id: Fg-udVW6_tsYl5YAAAFm
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
#### user/2 returns 200 when we create a user
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
  "location": {
    "longitude": 11.1,
    "latitude": 11.1
  },
  "email": "test@gmail.com",
  "birthday": "2020-05-17T02:03:32.430555Z"
}
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: Fg-udVQcL1Hmx68AAAGH
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
    "location": {
      "longitude": 11.1,
      "latitude": 11.1
    },
    "id": 681,
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
x-request-id: Fg-udVSVZOIkQY8AAAAo
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
    "location": {},
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
x-request-id: Fg-udVXB-LQ52IcAAAMB
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
  "birthday": "2020-05-17T02:03:32.420540Z"
}
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: Fg-udVODTA8EDbQAAAFG
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
    "location": {},
    "id": 1,
    "email": "test@gmail.com"
  }
}
```

#### user/2 returns 200 when we try to update a user with location
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
  "location": {
    "longitude": 11.1,
    "latitude": 11.1
  },
  "email": "test@gmail.com",
  "birthday": "2020-05-17T02:03:32.448789Z"
}
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: Fg-udVUyVwTCyBgAAAED
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
    "location": {
      "longitude": 11.1,
      "latitude": 11.1
    },
    "id": 1,
    "email": "test@gmail.com"
  }
}
```

#### user/2 returns 404 when we try to update a user and it doesn't exist
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
  "birthday": "2020-05-17T02:03:32.409231Z"
}
```

##### Response
* __Status__: 404
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: Fg-udVLWtZLvSTsAAABF
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

