-- A book table using CREATE, INSERT and SELECT in SQLite

-- We create a table to store a list of books. 
CREATE TABLE books (id INTEGER PRIMARY KEY, name TEXT, rating INTEGER );

-- Where it has columns for id, name, and rating.
INSERT INTO books VALUES (1, "Python", 5 );
INSERT INTO books VALUES (2, "SQL", 4 );
INSERT INTO books VALUES (3, "Relations", 4 );

-- Then we query it from the table.
SELECT * FROM books;
