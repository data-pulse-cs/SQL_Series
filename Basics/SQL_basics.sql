-- This grabs EVERYTHING from the employee_data table, like looking at the whole picture.
SELECT * FROM employee_data;

-- We’re narrowing it down now! Just showing first names and ages.
SELECT first_name, age FROM employee_data;

--  we only show the employees older than 40.
SELECT first_name, age FROM employee_data
WHERE age > 40;

-- We're still showing employees over 40, but now we’re lining them up from oldest to youngest!
SELECT first_name, age FROM employee_data
WHERE age > 40
ORDER BY age DESC;

-- This time, we want to show only 2 oldest employees who are over 40.
SELECT first_name, age FROM employee_data
WHERE age > 40
ORDER BY age DESC
LIMIT 2;

-- we group everyone by their gender and just show us the different genders in the company.
SELECT gender
FROM employee_data
GROUP BY gender;

-- this show us each gender AND the average age of people in that group.
SELECT gender, AVG(age) AS average_age
FROM employee_data
GROUP BY gender;

-- SELECT ... FROM ... WHERE ... GROUP BY ... ORDER BY ... LIMIT ...
-- We're keeping it simple for now! We’ll dive into more advanced stuff like joins and having later.