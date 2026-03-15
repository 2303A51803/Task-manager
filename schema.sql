CREATE DATABASE IF NOT EXISTS task_manager_app;
USE task_manager_app;

CREATE TABLE IF NOT EXISTS users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(150) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL
);

CREATE TABLE IF NOT EXISTS tasks (
    id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(150) NOT NULL,
    description TEXT,
    priority ENUM('High', 'Medium', 'Low') NOT NULL DEFAULT 'Medium',
    due_date DATE DEFAULT NULL,
    completed TINYINT(1) NOT NULL DEFAULT 0,
    user_id INT NOT NULL,
    CONSTRAINT fk_tasks_user
        FOREIGN KEY (user_id) REFERENCES users(id)
        ON DELETE CASCADE
);