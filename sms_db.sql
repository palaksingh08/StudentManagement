
-- Student Management System - SQL (sms_db)
CREATE DATABASE IF NOT EXISTS sms_db CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE sms_db;

CREATE TABLE IF NOT EXISTS users (
  id INT AUTO_INCREMENT PRIMARY KEY,
  username VARCHAR(100) NOT NULL UNIQUE,
  password VARCHAR(255) NOT NULL,
  role VARCHAR(50) DEFAULT 'admin',
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE IF NOT EXISTS students (
  id INT AUTO_INCREMENT PRIMARY KEY,
  roll_no VARCHAR(50) NOT NULL UNIQUE,
  name VARCHAR(150) NOT NULL,
  email VARCHAR(150),
  dob DATE,
  gender ENUM('Male','Female','Other') DEFAULT 'Male',
  branch VARCHAR(100),
  year INT,
  phone VARCHAR(20),
  address TEXT,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

INSERT INTO users (username, password, role) VALUES ('admin', 'admin123', 'admin');

-- sample student
INSERT INTO students (roll_no, name, email, dob, gender, branch, year, phone, address)
VALUES ('0246IS221017','Palak Singh Lodhi','palak@example.com','2002-06-15','Female','CSE',4,'9876543210','Jabalpur');
