-- Find employees with birthdays from 1952 to 1955
SELECT first_name, last_name
FROM employees
WHERE birth_date BETWEEN '1952-01-01' and '1955-12-31';

-- Find employees who are near retirement
SELECT first_name, last_name
FROM employees
WHERE (birth_date BETWEEN '1952-01-01' and '1955-12-31')
AND (hire_date BETWEEN '1985-01-01' AND '1988-12-31');

--Create table of near retirement
SELECT first_name, last_name
INTO retirement_info
FROM employees
WHERE (birth_date BETWEEN '1952-01-01' and '1955-12-31')
AND (hire_date BETWEEN '1985-01-01' AND '1988-12-31');