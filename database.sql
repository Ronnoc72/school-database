DROP DATABASE IF EXISTS school_db;
CREATE DATABASE school_db;
USE school_db;

CREATE TABLE courses (
  id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(50) NOT NULL,
  description VARCHAR(200) NOT NULL,
  course_num INT NOT NULL UNIQUE
);

CREATE TABLE staff (
  id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(150) NOT NULL,
  age INT DEFAULT 0,
  program VARCHAR(50) NOT NULL,
  course_id INT NOT NULL,
  FOREIGN KEY(course_id) REFERENCES courses(id)
);

CREATE TABLE students (
  id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(150) NOT NULL,
  age INT DEFAULT 0,
  major VARCHAR(50) NOT NULL,
  current_course INT NOT NULL,
  FOREIGN KEY(course_id) REFERENCES courses(id)
);

CREATE TABLE certificates (
  major VARCHAR(50) NOT NULL,
  enrolled INT DEFAULT 0,
  courses VARCHAR(200) NOT NULL,
  graduated INT DEFAULT 0
);

