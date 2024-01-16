# ReaLo test task

## Requirements

Should be installed
- Docker
- Gradle
- Git
- npm
- node 16

## Fetching and setup project
To fetch all projects, clone the base repository from [https://github.com/Sugovlad/realo.git]. After cloning, run Gradle, which will fetch all services into the appropriate folder. Ensure that the services are on the same level and inside the ReaLo project. To run the projects, execute docker-compose up.

## Services

## Foreword
The services do not have any security level. All containers, except the gateway, are running on a local network and cannot be accessed from the outside. No hash function is used for passwords, and they are saved as is, since no security setup is implemented.

All CORS policies are allowed and just skipped. MySQL is used as the database. The UI is written in React.js. For Java services, Java 17 and Spring Boot 3.2.1 are used.

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

Configured for running both locally and in a container. The UI has 2 tabs:

The first tab contains a project list. You can create/delete projects and assign users created in the second tab to these projects.
The second tab contains a user list. You can create/delete users.

## API

### User

- Get: /api/user/
- Get: /api/user/${id}
- Post: /api/user/
    - payload User:object
- Put: /api/user/
    - payload User:object
- Delete: /api/user/${id}

```
{
  "id": number,
  "fullName": string,
  "loginName": string,
  "password": string
}
```

### Project

- Get: /api/project
- Get: /api/project/${id}
- Post: /api/project/
    - payload Project:object
- Put: /api/project/
    - payload Project:object
- Put /api/project/${projectid}/add-user/${userid}
- Put /api/project/${projectid}/remove-user/${userid}
- Delete: /api/project/${id}


``` 
{
        "id": number,
        "projectName": string,
        "status": string,
        "assignedUsers": []
}
```
