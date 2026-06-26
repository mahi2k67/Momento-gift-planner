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

CREATE TABLE Category (
    category_id INT AUTO_INCREMENT PRIMARY KEY,
    category_name VARCHAR(100) NOT NULL
);

INSERT INTO Category(category_name)
VALUES
('Flowers'),
('Chocolates'),
('Soft Toys'),
('Personalized Gifts'),
('Books');

SELECT * FROM Category;

CREATE TABLE Gift (
    gift_id INT AUTO_INCREMENT PRIMARY KEY,
    gift_name VARCHAR(100) NOT NULL,
    description TEXT,
    price DECIMAL(10,2),
    stock INT,
    category_id INT,
    FOREIGN KEY (category_id)
        REFERENCES Category(category_id)
);
INSERT INTO Gift(gift_name,description,price,stock,category_id)
VALUES
('Rose Bouquet','Fresh red roses',499.00,20,1),
('Chocolate Box','Premium chocolates',799.00,15,2),
('Teddy Bear','Soft toy',999.00,10,3);

SELECT * FROM Gift;

SELECT
Gift.gift_name,
Category.category_name,
Gift.price
FROM Gift
JOIN Category
ON Gift.category_id = Category.category_id;