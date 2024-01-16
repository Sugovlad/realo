# ReaLo test task

## Requirements

Should be installed
- Docker
- Gradle
- Git
- npm
- node 16

## Fetching and setup project

To fetch all projects you need to clone base repo https://github.com/Sugovlad/realo.git
After that you need to run gradle it will fetch all services in appropriate folder. Services should be on the same level
and inside realo project.
To run projects run docker compose up

## Services

## Foreword

Services doesn't have any security level.
All containers except gateway running in local network and can't be accessed from the outside. No hash function used for
password, and it save as it is since no security is set up

Allowed all cors polices and just skipped. As Db used mysql. Ui is written in react-js. For java services used java 17
and spring boot 3.2.1.

### Admin Service

Admin service has 3 profiles.

- default setup for docker to run in container
- local to run microservices in local machine.
- standalone to run as single service.

### Api service

Admin service has 2 profiles.

- default setup for docker to run in container
- local to run microservices in local machine.

### Gateway

Admin service has 2 profiles.

- default setup for docker to run in container
- local to run microservices in local machine

### Discovery

Admin service has 2 profiles.

- default setup for docker to run in container
- local to run microservices in local machine.

### UI

Configured for running locally and in container.
Ui has 2 tabs. First tabs contains project list. You can create/delete project. You can assign user created in second
tab to projects.
Second tab contains user list. You can create/delete project.

## API url

### User

- Get: /admin/user/
- Get: /admin/user/${id}
- Post: /admin/user/
    - payload User:object
- Put: /admin/user/
    - payload User:object
- Delete: /admin/user/${id}

```
{
  "id": number,
  "fullName": string,
  "loginName": string,
  "password": string
}
```

### Project

- Get: /admin/project
- Get: /admin/project/${id}
- Post: /admin/project/
    - payload Project:object
- Put: /admin/project/
    - payload Project:object
- Put /admin/project/${projectid}/add-user/${userid}
- Put /admin/project/${projectid}/remove-user/${userid}
- Delete: /admin/project/${id}


``` 
{
        "id": number,
        "projectName": string,
        "status": string,
        "assignedUsers": []
}
```
