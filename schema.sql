CREATE DATABASE restaurant_reviews;
USE restaurant_reviews;

CREATE TABLE restaurant (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100),
    street_address VARCHAR(255),
    description TEXT
);

CREATE TABLE review (
    id INT PRIMARY KEY AUTO_INCREMENT,
    restaurant_id INT,
    user_name VARCHAR(100),
    rating DECIMAL(2,1),
    review_text TEXT,
    review_date DATE,
    FOREIGN KEY (restaurant_id) REFERENCES restaurant(id)
);
