-- A database with a people table and hobbies table that have a similar key "names" written in SQLite

-- We create a table called persons
CREATE TABLE persons (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT,
    age INTEGER);

-- Then insert values into the table called persons
INSERT INTO persons (name, age) VALUES ("Bobby McBobbyFace", 12);
INSERT INTO persons (name, age) VALUES ("Lucy BoBucie", 25);
INSERT INTO persons (name, age) VALUES ("Banana FoFanna", 14);
INSERT INTO persons (name, age) VALUES ("Shish Kabob", 20);
INSERT INTO persons (name, age) VALUES ("Fluffy Sparkles", 8);

-- We create a table called hobbies
CREATE table hobbies (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    person_id INTEGER,
    name TEXT);

-- We create a table called hobbies
INSERT INTO hobbies (person_id, name) VALUES (1, "drawing");
INSERT INTO hobbies (person_id, name) VALUES (1, "coding");
INSERT INTO hobbies (person_id, name) VALUES (2, "dancing");
INSERT INTO hobbies (person_id, name) VALUES (2, "coding");
INSERT INTO hobbies (person_id, name) VALUES (3, "skating");
INSERT INTO hobbies (person_id, name) VALUES (3, "rowing");
INSERT INTO hobbies (person_id, name) VALUES (3, "drawing");
INSERT INTO hobbies (person_id, name) VALUES (4, "coding");
INSERT INTO hobbies (person_id, name) VALUES (4, "dilly-dallying");
INSERT INTO hobbies (person_id, name) VALUES (4, "meowing");

-- We insert some other values here for a new person called Flash Sparkles!
INSERT INTO persons (name, age) VALUES ("Flash Sparkles", 8);
INSERT INTO hobbies (person_id, name) VALUES (6, "jumping");


-- We select the 2 tables with a JOIN so that you can see each person's name next to their hobby
SELECT persons.name, hobbies.name FROM persons
    JOIN hobbies
    WHERE hobbies.person_id = persons.id;


-- Then we make query that shows only the name and hobbies of 'Bobby McBobbyFace', using JOIN combined with WHERE.
SELECT persons.name, hobbies.name AS hobby FROM persons
    JOIN hobbies
    ON persons.id = hobbies.person_id
    WHERE persons.name = "Bobby McBobbyFace";

    
    
    
    
