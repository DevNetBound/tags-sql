-- Created a table of clothes written in SQLite.



-- We create a table called clothes.
CREATE TABLE clothes (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    type TEXT,
    design TEXT);
    
-- We insert values into the table
INSERT INTO clothes (type, design)
    VALUES ("dress", "pink polka dots");
INSERT INTO clothes (type, design)
    VALUES ("pants", "rainbow tie-dye");
INSERT INTO clothes (type, design)
    VALUES ("blazer", "black sequin");

-- Used ALTER to add a 'price' column to the table.
ALTER TABLE clothes ADD price INTEGER default "FREE";

-- We query everything from the table called clothes
SELECT * FROM clothes;

-- Used UPDATE to update item prices and inserted a new item into the table that had all three attributes filled in, including 'price'.

UPDATE clothes SET price = 10 WHERE id = 1;
UPDATE clothes SET price = 20 WHERE id = 2;
UPDATE clothes SET price = 30 WHERE id = 3;

-- Query the entire table
SELECT * FROM clothes;

-- Insert another value into the table
INSERT INTO clothes (type, design, price) VALUES ("shirt", "stripes", 40);

-- Query the entire table again to show the updated values
SELECT * FROM clothes;
