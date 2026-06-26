CREATE DATABASE momento_db;

USE momento_db;

CREATE TABLE User (
    user_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    password VARCHAR(255) NOT NULL,
    phone VARCHAR(15),
    address TEXT
);

INSERT INTO User(name,email,password,phone,address)
VALUES(
'Maha Lakshmi',
'maha@gmail.com',
'123456',
'9876543210',
'Coimbatore'
);

SELECT * FROM User;