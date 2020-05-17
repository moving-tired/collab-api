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
  "to_date": "2020-05-17T20:43:58.526985Z",
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
x-request-id: Fg_rmZ-017eOpmwAAAFF
access-control-allow-origin: *
access-control-expose-headers: 
access-control-allow-credentials: true
```
* __Response body:__
```json
{
  "status": "ok",
  "data": {
    "to_date": "2020-05-17T20:43:58Z",
    "name": "Test name",
    "location": {
      "longitude": 11.1,
      "latitude": 11.1
    },
    "id": 29,
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
x-request-id: Fg_rma59IjsYl5YAAADI
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
    "created_by_id": 199
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
x-request-id: Fg_rma4lDeC5dEcAAAFC
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
x-request-id: Fg_rmaGidtjmx68AAACj
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
    "created_by_id": 195
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
x-request-id: Fg_rmaCwy7EEDbQAAAEC
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
    "created_by_id": 194
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
x-request-id: Fg_rma3HPPgkQY8AAAEm
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
x-request-id: Fg_rmZ-nmWNqyLgAAASE
access-control-allow-origin: *
access-control-expose-headers: 
access-control-allow-credentials: true
```
* __Response body:__
```json
{
  "status": "ok",
  "data": {
    "token": "eyJhbGciOiJIUzUxMiIsInR5cCI6IkpXVCJ9.eyJhdWQiOiJjb2xsYWIiLCJleHAiOjE1OTIxNjc0MzgsImlhdCI6MTU4OTc0ODIzOCwiaXNzIjoiY29sbGFiIiwianRpIjoiY2QxMmI3ODktN2M2My00Zjc4LWIzOGYtODNmNjYxNWQ3MTJhIiwibmJmIjoxNTg5NzQ4MjM3LCJzdWIiOiIxOTMiLCJ0eXAiOiJhY2Nlc3MifQ.Nx6HEwak8fazYZoM05r3SUe6jbX5vSF26bNkw3KVYO0OJ5LgmQ1Om2Xv7PxcZVi4gJYL8rW8Rj4y4VGNfSMy3Q",
    "name": "John Smith",
    "id": 193
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
x-request-id: Fg_rmZ49SYEj5J0AAADi
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
  "birthday": "2020-05-17T20:43:58.487711Z"
}
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: Fg_rmZ49Gb4gF7IAAACm
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
    "id": 191,
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
x-request-id: Fg_rma48FD452IcAAAFl
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
x-request-id: Fg_rma3lX8bBqs4AAADj
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
  "birthday": "2020-05-17T20:43:58.550042Z"
}
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: Fg_rmaEU2BDCpWgAAAEG
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
  "birthday": "2020-05-17T20:43:58.530111Z"
}
```

##### Response
* __Status__: 200
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: Fg_rmZ_k4Z9aPqUAAADG
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
  "birthday": "2020-05-17T20:43:58.561910Z"
}
```

##### Response
* __Status__: 404
* __Response headers:__
```
content-type: application/json; charset=utf-8
cache-control: max-age=0, private, must-revalidate
x-request-id: Fg_rmaHKE1_kP7kAAADD
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

