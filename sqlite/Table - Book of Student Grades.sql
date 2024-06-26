-- Here we have a table for student grades in SQLite

-- We create a table for student grades
CREATE TABLE student_grades (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT,
    number_grade INTEGER,
    fraction_completed REAL);

-- We insert the values for student grades
INSERT INTO student_grades (name, number_grade, fraction_completed)
    VALUES ("Winston", 90, 0.805);
INSERT INTO student_grades (name, number_grade, fraction_completed)
    VALUES ("Winnefer", 95, 0.901);
INSERT INTO student_grades (name, number_grade, fraction_completed)
    VALUES ("Winsteen", 85, 0.906);
INSERT INTO student_grades (name, number_grade, fraction_completed)
    VALUES ("Wincifer", 66, 0.7054);
INSERT INTO student_grades (name, number_grade, fraction_completed)
    VALUES ("Winster", 76, 0.5013);
INSERT INTO student_grades (name, number_grade, fraction_completed)
    VALUES ("Winstonia", 82, 0.9045);

-- We select all of the rows, and display the name, number_grade, and percent_completed.
SELECT 
    name, 
    number_grade, 
    ROUND(fraction_completed * 100)
        as "percent_completed"
    FROM student_grades;

-- Then use COUNT with GROUP BY and a CASE statement to show how many students have earned which letter_grade.
SELECT COUNT(*),
    CASE 
        WHEN number_grade > 90 THEN "A"
        WHEN number_grade > 80 THEN "B"
        WHEN number_grade > 70 THEN "C"
        ELSE "F"
        END as letter_grade
    FROM student_grades
    GROUP BY letter_grade;
