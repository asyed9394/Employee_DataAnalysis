/***
Deliverable 1: determine the number of retiring employees per title,.
Deliverbale 2 : identify employees who are eligible to participate in a mentorship program. 
*/


/* For delvierable 1, Create a Retirement Titles table that holds all the titles of current employees who were born 
between January 1, 1952 and December 31, 1955. */

SELECT
	e.emp_no,
	e.first_name,
	e.last_name,
	t.title,
	t.from_date,
	t.to_date
INTO retirement_titles
FROM employees e
JOIN titles t
ON	e.emp_no = t.emp_no
WHERE	birth_date between '1952-01-01' AND '1955-12-31'
order by e.emp_no;

/*
Because some employees may have multiple titles in the database—for example, due to promotions.
we’ll need to use the DISTINCT ON statement to create a table that contains the most recent title of each employee. 
Then, use the COUNT() function to create a final table that has the number of retirement-age employees by most recent job title.
**/

-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (rt.emp_no) rt.emp_no,
rt.first_name,
rt.last_name,
rt.title
INTO unique_titles
FROM retirement_titles rt
ORDER BY rt.emp_no, rt.to_date DESC; --For each employee get the latest title based on the to_date in the title data set.

/* Retiring Titles table to hold the required information.*/

select count(emp_no) , title
into retiring_titles
from unique_titles
group by title
order by 1 desc ;

/**Delvierable 2: Employee eligible for mentorship program
mentorship-eligibility table that holds the current employees who were born between January 1, 1965 and December 31, 1965.
*/

SELECT
	Distinct on (e.emp_no)
	e.emp_no,
	e.first_name,
	e.last_name,
	e.birth_date,
	t.from_date,
	t.to_date,
	t.title
INTO mentorship_eligibilty
FROM employees e
JOIN titles t
ON	e.emp_no = t.emp_no
WHERE	birth_date between '1965-01-01' AND '1965-12-31'
order by e.emp_no , t.to_date desc;

select * from mentorship_eligibilty order by emp_no, birth_date;