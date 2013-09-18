DROP TABLE IF EXISTS orders;
DROP TABLE IF EXISTS products;
DROP TABLE IF EXISTS customers;
DROP TABLE IF EXISTS review;
DROP TABLE IF EXISTS suppliers;

CREATE TABLE customers
(
id int NOT NULL AUTO_INCREMENT,
first_name VARCHAR (255),
last_name VARCHAR (255),
address VARCHAR (255),
PRIMARY KEY (id)
);

CREATE TABLE suppliers
(
id int NOT NULL AUTO_INCREMENT,
company VARCHAR (255),
contact_first_name VARCHAR (255),
contact_last_name VARCHAR (255),
address VARCHAR (255),
PRIMARY KEY (id)
);

CREATE TABLE products
(
id int NOT NULL AUTO_INCREMENT,
name VARCHAR (255),
description VARCHAR (255),
price FLOAT (10,2),
PRIMARY KEY (id)
);

CREATE INDEX product_name_index ON products (name)

CREATE TABLE orders
(
id int NOT NULL AUTO_INCREMENT,
customer_id int,
product_id int,
PRIMARY KEY (id),
FOREIGN KEY (customer_id) REFERENCES customers (id),
CONSTRAINT fk_product_id FOREIGN KEY (product_id) REFERENCES customers (id)
);

CREATE TABLE reviews
(
    id int NOT NULL AUTO_INCREMENT,
    customer_id int,
    comment VARCHAR (255),
    PRIMARY KEY (id),
    FOREIGN KEY (customer_id) REFERENCES customers (id)
);

INSERT INTO customers (first_name, last_name, address) VALUES ('Mike', 'Dunbar', '123 Bluebird Lane, Atlanta, GA 30307');
INSERT INTO customers (first_name, last_name, address) VALUES ('Jeff', 'Bird', '423 Coffee Blvd, Pittsburgh, PA 22555');
INSERT INTO customers (first_name, last_name, address) VALUES ('Sally', 'Mae', '999 Blockwood Trace, Portland, OR 44667');
INSERT INTO customers (first_name, last_name, address) VALUES ('Kris', 'Fields', '555 Mets Street, Miami, FL 22456');
INSERT INTO customers (first_name, last_name, address) VALUES ('Sara', 'Sweet', '123 Future Lane, Portland, OR 44667');

INSERT INTO suppliers (company, contact_first_name, contact_last_name, address) VALUES ('Zip Co', 'Kelly', 'Waters', '123 Bluebird Lane, Atlanta, GA 30307');
INSERT INTO suppliers (company, contact_first_name, contact_last_name, address) VALUES ('Tot Toys', 'Jeff', 'Bird', '555 Triple Brew Lane, Davis, CA 45678');
INSERT INTO suppliers (company, contact_first_name, contact_last_name, address) VALUES ('Cute Critters', 'Sally', 'Mae', '999 Blockwood Trace, Portland, OR 44667');
INSERT INTO suppliers (company, contact_first_name, contact_last_name, address) VALUES ('Birdhouse Skates', 'Tony', 'Hawk', '1222 Tool Trip Alley LA, CA');
INSERT INTO suppliers (company, contact_first_name, contact_last_name, address) VALUES ('Radio Flyer', 'Johnny', 'Beegood', '123 Future Lane, Portland, OR 44667');

INSERT INTO products (name, description) VALUES ('yo-yo', 'spinning thing on a string');
INSERT INTO products (name, description) VALUES ('truck', 'thing with wheels');
INSERT INTO products (name, description) VALUES ('skate board', 'rad little item');
INSERT INTO products (name, description) VALUES ('slinky', 'crawls down stairs');
INSERT INTO products (name, description) VALUES ('wagon', 'pull a little one around');

INSERT INTO orders (customer_id, product_id) VALUES (1, 3);
INSERT INTO orders (customer_id, product_id) VALUES (1, 1);
INSERT INTO orders (customer_id, product_id) VALUES (2, 2);
INSERT INTO orders (customer_id, product_id) VALUES (2, 3);
INSERT INTO orders (customer_id, product_id) VALUES (3, 1);
INSERT INTO orders (customer_id, product_id) VALUES (3, 3);

INSERT INTO reviews (customer_id, comment) VALUES (2, "This is great");
INSERT INTO reviews (customer_id, comment) VALUES (null, "This is terrible");
INSERT INTO reviews (customer_id, comment) VALUES (4, "Been there, done that");
INSERT INTO reviews (customer_id, comment) VALUES (null, "Superb!");


