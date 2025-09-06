SHOW timezone;

SELECT now();

CREATE table timeZ (ts TIMESTAMP without TIME zone, tsz TIMESTAMP with TIME zone);

INSERT into timeZ VALUES('2025-01-12 10:45:00', '2025-01-12 10:45:00');

SELECT * FROM timeZ;

SELECT CURRENT_DATE;

SELECT now()::date;
SELECT now()::time;


SELECT to_char(now(), 'yyyy/mm/dd');

SELECT CURRENT_DATE - INTERVAL '1 year';

SELECT age(CURRENT_DATE, '1996-07-29');

SELECT *, age(CURRENT_DATE, dob) FROM students;


SELECT extract(YEAR FROM '2024-01-25'::date);

SELECT 1::BOOLEAN;
SELECT 0::BOOLEAN; -- false
SELECT '0'::BOOLEAN;
SELECT '1'::BOOLEAN; -- true
SELECT 'y'::BOOLEAN; -- true
SELECT 'n'::BOOLEAN; -- false
