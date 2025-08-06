CREATE DATABASE School;
USE School;
CREATE TABLE students (
    id INT PRIMARY KEY,
    name VARCHAR(100),
    age INT,
    course VARCHAR(50)
);
/*For Inserting The Row We Use Inert Command*/
INSERT INTO students (id, name, age, course)
VALUES (1,"Gopinath",23,'MCA'),(2,'Varshitha',22,'ECE'),
  (3, 'Rahul', 24, 'B.Tech'),
  (4, 'Anjali', 22, 'M.Sc');
/*For Fetching All Commands We Need To Use Select Command*/
SELECT * FROM students;
/*Handle missing values using NULL*/
INSERT INTO students (id, name)
VALUES (5, 'Yogaraj');
/*Now Create Orderes Tables*/
CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    item_name VARCHAR(100),
    quantity INT DEFAULT 1,
    status VARCHAR(20) DEFAULT 'Pending'
);
/*Handle missing values using Default*/
INSERT INTO orders (order_id, item_name)
VALUES (101, 'Laptop');
INSERT INTO orders (order_id, item_name) VALUES(102,'Watch'),(103,'Mobile');
SELECT * FROM orders;
/*Use UPDATE  with WHERE conditions*/
UPDATE orders
SET quantity = 5
WHERE order_id = 101;
/*Use DELETE  with WHERE conditions*/
DELETE FROM orders
WHERE status = 'Pending';
