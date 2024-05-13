-- We create a table for documents written in SQLite.

-- Created a table called documents using AUTOINCREMENT
CREATE table documents (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    title TEXT,
    content TEXT,
    author TEXT);

-- We insert values into the table, without the value 'id' as AUTOCREMENT is used as a key field
INSERT INTO documents (author, title, content)
    VALUES ("Puff T.M. Dragon", "Fancy Stuff", "Ceiling wax, dragon wings, etc.");
INSERT INTO documents (author, title, content)
    VALUES ("Puff T.M. Dragon", "Living Things", "They're located in the left ear, you know.");
INSERT INTO documents (author, title, content)
    VALUES ("Jackie Paper", "Pirate Recipes", "Cherry pie, apple pie, blueberry pie.");
INSERT INTO documents (author, title, content)
    VALUES ("Jackie Paper", "Boat Supplies", "Rudder - guitar. Main mast - bed post.");
INSERT INTO documents (author, title, content)
    VALUES ("Jackie Paper", "Things I'm Afraid Of", "Talking to my parents, the sea, giant pirates, heights.");

-- We query for all data in the table 'documents'
SELECT * FROM documents;

-- Used UPDATE to change the author to 'Jackie Draper' for all rows where currently 'Jackie Paper'.
UPDATE documents SET author = "Jackie Draper" WHERE author = "Jackie Paper";

-- We query again to check for updated table
SELECT * FROM documents;

-- We perform a DELETE that deletes a title
DELETE FROM documents WHERE title = "Things I'm Afraid Of";

-- We query again to check if the table updated and only deleted the row where the title is 'Things I'm Afraid Of'.
SELECT * FROM documents;
