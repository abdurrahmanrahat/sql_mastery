CREATE Table students (
    student_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    age INT,
    grade CHAR(2),
    course VARCHAR(50),
    email VARCHAR(100),
    dob DATE,
    blood_group VARCHAR(5),
    country VARCHAR(50)
)


INSERT INTO students (first_name, last_name, age, grade, course, email, dob, blood_group, country)
VALUES
('Amit', 'Sharma', 20, 'A', 'Computer Science', 'amit.sharma@example.com', '2005-03-15', 'B+', 'India'),
('Sophia', 'Johnson', 19, 'B', 'Mathematics', 'sophia.johnson@example.com', '2006-07-21', 'O-', 'USA'),
('Rahul', 'Verma', 21, 'A', 'Physics', 'rahul.verma@example.com', '2004-11-09', 'A+', 'India'),
('Emma', 'Williams', 22, 'C', 'Chemistry', 'emma.williams@example.com', '2003-01-28', 'AB+', 'UK'),
('Liam', 'Brown', 20, 'B', 'Biology', 'liam.brown@example.com', '2005-06-17', 'O+', 'Canada'),
('Olivia', 'Martinez', 19, 'A', 'Economics', 'olivia.martinez@example.com', '2006-02-11', 'B-', 'Mexico'),
('Ethan', 'Taylor', 23, 'C', 'Engineering', 'ethan.taylor@example.com', '2002-09-05', 'A-', 'Australia'),
('Mia', 'Anderson', 21, 'B', 'Political Science', 'mia.anderson@example.com', '2004-12-14', 'O+', 'USA'),
('Noah', 'Wilson', 22, 'A', 'Law', 'noah.wilson@example.com', '2003-04-03', 'B+', 'UK'),
('Ava', 'Thomas', 20, 'B', 'History', 'ava.thomas@example.com', '2005-08-25', 'AB-', 'Canada');

SELECT DISTINCT country FROM students;

SELECT * FROM students
    WHERE country = 'USA' OR country = 'UK';
    
SELECT * FROM students
    WHERE age <> 21;
-- 

SELECT upper(first_name) FROM students;
SELECT concat(first_name, last_name) FROM students;

SELECT * FROM students;

SELECT max(length(first_name)) FROM students;


SELECT * FROM students
    WHERE NOT country = 'USA';

SELECT * FROM students
    WHERE email IS NOT NULL;

SELECT COALESCE(email, 'Email not provided'), blood_group, first_name FROM students;


SELECT * FROM students
    WHERE country = 'UK' OR country = 'USA' OR country = 'Canada';

SELECT * FROM students
    WHERE country NOT IN('UK', 'USA');

SELECT * FROM students
    WHERE age BETWEEN 19 AND 21;

SELECT * FROM students
    WHERE first_name LIKE '%ia';

SELECT * FROM students
    WHERE first_name ILIKE 'm%';

SELECT * FROM students
    WHERE country NOT IN('UK', 'USA', 'Canada') LIMIT 2 OFFSET 2;

SELECT * FROM students LIMIT 2 OFFSET 2 * 0;
SELECT * FROM students LIMIT 2 OFFSET 2 * 1;
SELECT * FROM students LIMIT 2 OFFSET 2 * 2;

SELECT * FROM students;

DELETE FROM students
    WHERE grade = 'B';

UPDATE students
    SET email = 'default2@gmail.com', age = 26
    WHERE student_id = 13;