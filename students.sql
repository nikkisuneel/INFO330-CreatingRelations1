DROP TABLE IF EXISTS students;

CREATE TABLE students (
  id INTEGER PRIMARY KEY,
  firstname TEXT(40) NOT NULL,
  lastname TEXT(80) NOT NULL,
  age INTEGER NOT NULL
);

INSERT INTO students (id, firstname, lastname, age)
VALUES (1, 'Fred', 'Flintstone', 35),(2, 'Wilma', 'Flintstone', 29), (3, 'Barney', 'Rubble', 33), (4, 'Betty', 'Rubble', 29), 
       (5, 'Pebbles', 'Flintstone', 1),
       (6, 'Bam-Bam', 'Rubble', 1),
       (7, 'Aidan', 'Grace', 20),
       (8, 'Joey', 'Popp', 19);
