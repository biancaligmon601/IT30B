-- student SQL#1 : slect 1  
SELECT * FROM students;

--student SQL#2 : select 2 students in asc order by id;
SELECT * FROM students 
  ORDER BY student_id ASC;

--student SQL#3 : select 3 students in desc order by id;
SELECT * FROM students
  ORDER BY student_id DESC;

--student SQL#4 : select 4 students in asc order by last_name;
SELECT * FROM students
  ORDER BY student_last_name ASC;

--student SQL#5 : select 5 students in desc order by last_name;
SELECT * FROM students
  ORDER BY student_last_name DESC;

--student SQL#6 : select 6 students in asc order by first_name; 
SELECT * FROM students
  ORDER BY student_first_name ASC;

--student SQL#7 : select 7 students in desc order by first_name;
SELECT * FROM students
  ORDER BY student_first_name DESC;

-- you can modify displayed colums by selecting
--specific columns after SELECT command 
-- student SQL#8 display all students first_name and last_name in  asc order
SELECT student_first_name,
       student_last_name
FROM students
  ORDER BY student_first_name ASC;

-- student SQL#9 LIMIT - you can change the limit to any numbers

SELECT student_first_name,
       student_last_name
FROM students
  ORDER BY student_first_name ASC
LIMIT 1;

-- student SQL#10 - Select a student based on id
SELECT student_first_name,
       student_last_name
FROM students
WHERE student_id = 1
LIMIT 1;

-- student SQL#11 - update student name  student based on id
UPDATE students
SET student_first_name = 'Bixxa',
    student_last_name = 'Viodor'
WHERE student_id = 1;

-- 