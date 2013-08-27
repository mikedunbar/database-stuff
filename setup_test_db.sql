DROP TABLE IF EXISTS orders;
DROP TABLE IF EXISTS products;
DROP TABLE IF EXISTS customers;

CREATE TABLE customers
(
id int NOT NULL AUTO_INCREMENT,
first_name VARCHAR (255),
last_name VARCHAR (255),
address VARCHAR (255),
PRIMARY KEY (id)
);

CREATE TABLE products
(
id int NOT NULL AUTO_INCREMENT,
name VARCHAR (255),
description VARCHAR (255),
PRIMARY KEY (id)
);

CREATE TABLE orders
(
id int NOT NULL AUTO_INCREMENT,
customer_id int,
product_id int,
PRIMARY KEY (id),
FOREIGN KEY (customer_id) REFERENCES customers (id),
CONSTRAINT fk_product_id FOREIGN KEY (product_id) REFERENCES customers (id)
);

INSERT INTO customers (first_name, last_name, address) VALUES ('Mike', 'Dunbar', '123 Bluebird Lane, Atlanta, GA 30307');
INSERT INTO customers (first_name, last_name, address) VALUES ('Jeff', 'Bird', '423 Coffee Blvd, Pittsburgh, PA 22555');
INSERT INTO customers (first_name, last_name, address) VALUES ('Sally', 'Mae', '999 Blockwood Trace, Portland, OR 44667');

INSERT INTO products (name, description) VALUES ('yo-yo', 'spinning thing on a string');
INSERT INTO products (name, description) VALUES ('truck', 'thing with wheels');
INSERT INTO products (name, description) VALUES ('skate board', 'rad little item');

INSERT INTO orders (customer_id, product_id) VALUES (1, 3);
INSERT INTO orders (customer_id, product_id) VALUES (1, 1);
INSERT INTO orders (customer_id, product_id) VALUES (2, 2);
INSERT INTO orders (customer_id, product_id) VALUES (2, 3);
INSERT INTO orders (customer_id, product_id) VALUES (3, 1);
INSERT INTO orders (customer_id, product_id) VALUES (3, 3);


