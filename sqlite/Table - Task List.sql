-- A task list table using CREATE, INSERT, SELECT with a function in SQLite

-- Here we create a table of tasks to do.
CREATE TABLE todo_list (id INTEGER PRIMARY KEY, item TEXT, minutes INTEGER);


-- We then insert an item into the TODO list with the number of minutes it will take to complete the task. 
INSERT INTO todo_list VALUES (1, "Wash the dishes", 15);
INSERT INTO todo_list VALUES (2, "vacuuming", 20);
INSERT INTO todo_list VALUES (3, "Learn some stuff on KA", 30);
INSERT INTO todo_list VALUES (4, "Brunch", 180);

-- We find the total amount of time to complete all tasks
SELECT SUM(minutes) FROM todo_list;

