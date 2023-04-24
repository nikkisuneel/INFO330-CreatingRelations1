CREATE TABLE student_courses (studentid INTEGER REFERENCES students(id), course TEXT REFERENCES courses(code), grade FLOAT DEFAULT NULL);
INSERT INTO student_courses (studentid, course)
   ...> VALUES ((SELECT id FROM students WHERE firstname='Fred'), 'INFO330A'),((SELECT id FROM students WHERE firstname='Fred'), 'INFO448A'), ((SELECT id FROM students WHERE firstname='Fred'), 'INFO314'), ((SELECT id FROM students WHERE firstname='Barney'), 'INFO330A'), ((SELECT id FROM students WHERE firstname='Barney'), 'INFO449A'), ((SELECT id FROM students WHERE firstname='Wilma'), 'BAW0100'), ((SELECT id FROM students WHERE firstname='Wilma'), 'BAW100A'), ((SELECT id FROM students WHERE firstname='Betty'), 'BAW0100');
sqlite> 
