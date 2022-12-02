SELECT e.emp_no,
	e.first_name,
	e.last_name,
	ti.title,
	ti.from_date,
	ti.to_date

INTO retirement_titles
FROM employees e
LEFT JOIN titles ti ON e.emp_no = ti.emp_no
WHERE e.birth_date BETWEEN '1952-01-01' AND '1955-12-31'
ORDER BY e.emp_no;

-- Use Dictinct with Order by to remove duplicate rows
SELECT DISTINCT ON (emp_no) emp_no,
					first_name,
					last_name,
					title

INTO unique_titles
FROM retirement_titles
WHERE to_date = '9999-01-01'
ORDER BY emp_no, to_date DESC;

-- Find number of employees by their most recent job title who are about to retire.
SELECT COUNT(*) as title_count, title
INTO retiring_titles
FROM near_retirement_titles
GROUP BY title
ORDER BY title_count DESC;