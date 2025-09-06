SELECT country, count(*), avg(age) from students
    GROUP BY country;


SELECT country, avg(age) from students
    GROUP BY country
    HAVING avg(age) > 20;

-- count students born in Each year.
SELECT extract(YEAR FROM dob) as birth_year, count(*) FROM students
    GROUP BY birth_year;

