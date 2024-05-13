-- In this SQL code, I created my own bike store and querying a data to answer questions.

-- Creating the table:
CREATE TABLE bikes (
id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
item TEXT,
color TEXT,
size TEXT,
price NUMERIC,
free_helmet_included TEXT,
quantity_sold NUMERIC
);

-- Then I inserted the data into the table.
INSERT INTO bikes VALUES (1, 'GoRicos', 'orange', 'Large', '839.99', 'YES', '4');
INSERT INTO bikes VALUES (2, 'Frog Jumper 2000', 'green', 'Large', '2099.99', 'YES', '4');
INSERT INTO bikes VALUES (3, 'Quick Fox 8', 'brown', 'Large', '199.99', 'NO', '88');
INSERT INTO bikes VALUES (4, 'Slow Roller 24', 'tan', 'Small', '499.99', 'YES', '7');
INSERT INTO bikes VALUES (5, 'Road Burner', 'hot-red', 'Medium', '299.99', 'NO', '2');
INSERT INTO bikes VALUES (6, 'Lemon Bizzer', 'yellow', 'Medium', '499.99', 'YES', '55');
INSERT INTO bikes VALUES (7, 'Fiz McGee X49', 'red', 'Large', '249.99', 'NO', '24');
INSERT INTO bikes VALUES (8, 'Level 201', 'red', 'X-Small', '99.99', 'NO', '90');
INSERT INTO bikes VALUES (9, 'Mr. Jaws', 'ocean-blue', 'X-Small', '499.99', 'YES', '2');
INSERT INTO bikes VALUES (10, 'The Pink Fluffer', 'pink', 'X-Small', '10099.99', 'YES', '0');
INSERT INTO bikes VALUES (11, 'BroncoSore', 'red', 'Small', '199.99', 'NO', '11');
INSERT INTO bikes VALUES (12, 'Hurricane 5', 'grey-blue', 'X-Medium', '499.99', 'NO', '2');
INSERT INTO bikes VALUES (13, 'The Destroyer', 'orange', 'Large', '499.99', 'YES', '7');
INSERT INTO bikes VALUES (14, 'Big Dog Ruff Roader', 'polka-dot', 'XX-Small', '199.99', 'NO', '5');
INSERT INTO bikes VALUES (15, 'Wrecker Record XBZ', 'thunder-red', 'Large', '4999.99', 'YES', '1');

-- Show the table you created for your store.
SELECT * FROM bikes;

-- Order all the products offered in your store from highest to lowest price.
SELECT * FROM bikes
    ORDER BY price DESC;

-- Show all the products offered under $500 in descending order by price.
SELECT item, price FROM bikes
    WHERE price <= 500
    ORDER BY price DESC;

-- Show all products, the quantity sold, and gross profit for each product. Order the list of products in descending order by their number of quantity sold.
SELECT item, quantity_sold, ROUND(quantity_sold * price, 2) AS gross_profit
    FROM bikes
    ORDER BY quantity_sold DESC;

-- List number of bikes per color where color has more than one bike
SELECT color, COUNT(color) AS total_products FROM bikes
    GROUP BY color
    HAVING total_products > 1
    ORDER BY total_products;
