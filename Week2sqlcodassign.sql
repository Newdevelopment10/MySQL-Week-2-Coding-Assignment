SELECT COUNT(*) AS 'Titles Born After 1965-01-01' FROM employees e 
INNER JOIN titles t USING (emp_no) WHERE birth_date > '1965-01-01' GROUP BY t.title LIMIT 20;

SELECT AVG(s.salary) AS 'Average Salary', t.title FROM salaries s
INNER JOIN titles t USING (emp_no) GROUP BY t.title;

SELECT SUM(s.salary) AS 'Total Spent', d.dept_name FROM salaries s
INNER JOIN dept_emp de USING (emp_no)
INNER JOIN departments d USING (dept_no) WHERE year(s.from_date) >= 1990 AND year(s.to_date) <= 1992
GROUP BY dept_name;