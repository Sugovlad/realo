CREATE DATABASE IF NOT EXISTS realo;
USE realo;

DROP TABLE IF EXISTS project_user;
DROP TABLE IF EXISTS users;
DROP TABLE IF EXISTS projects;

CREATE TABLE users
(
    id         BIGINT AUTO_INCREMENT PRIMARY KEY,
    full_name  VARCHAR(255) NOT NULL,
    login_name VARCHAR(255) NOT NULL UNIQUE,
    password   VARCHAR(255) NOT NULL
);

CREATE TABLE projects
(
    id           BIGINT AUTO_INCREMENT PRIMARY KEY,
    project_name VARCHAR(255) NOT NULL UNIQUE,
    status       VARCHAR(255) NOT NULL
);

CREATE TABLE project_user
(
    id         BIGINT AUTO_INCREMENT PRIMARY KEY,
    project_id BIGINT NOT NULL,
    user_id    BIGINT NOT NULL,
    FOREIGN KEY (project_id) REFERENCES projects (id),
    FOREIGN KEY (user_id) REFERENCES users (id),
    UNIQUE (project_id, user_id)
);
