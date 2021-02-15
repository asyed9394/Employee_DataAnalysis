# Pewlett-Hackard Employee Analaysis

## Project Overview

Pewlett-Hackard is a large compnay with several thosand employees . The compnay has been around for long time and its workforce comprises of a large number of baby boomers. The HR has to been tasked to address these retierments by creating a plan for rucrutment and succession for upcoming vancant postiions due to retirements.

In order to do the above mentioned planning, HR employee data is used to identify following:
1. Determine the number of retiritng employees by different job titles, and the list of employees retiring with thier most recent job titles.
2. Identify list of employees meeting certain critrea who can participate in a mentorship program . The list of employee are eligible to participate in mentorship program where upcoming retiring employees provide mentor ship to these employees for the succession planning and replacement.

## Resources:
- HR Employee data set:
    - Entity relationship diagram for HR Employee data : 
     
     ![link to ERD](EmployeeDB.png)
- Link to sql to create database schema [Link to schema creation SQL](Queries/ph_employeedb_schema.sql)
- Link to data files:
    1. Data about Employees [Employees Data](Data/employees.csv)
    2. Data about departments [Departments Data](Data/departments.csv)
    3. Data about employees and department [Deptartment Employee](Data/dept_emp.csv)
    4. Data about employee's job titles during their tenure at the PH [Employee Titltes](Data/titles.csv)
    5. Data about employess salaries during their tenure at the PH [Employee Salaries](Data/salaries.csv)
    6. Data about department manages over time [Department Managers](Data/dept_manager.csv)
 - SQL code used to do the analysis is [SQL Code to analyze employee data](Queries/Employee_Database_challenge.sql)
 
 - Database : Postgress 11.6

## Analysis Results

### Retiring employees title count:

1. The file [Retirement Titles](Data/retirement_titles.csv) shows all the tiltes held by employess who are reaching retiriement baased on birth dates between Jan 1 1952 to Dec 31st 1955. Some of the employess have been long enough with companyt that they thave multiple changes in the job title during their tenur.e.g employee # 10004 was an engineer from Dec1 1986 to dec 1 1995 and then promoted to senior engineer thereafter .


    emp_no	first_name	last_name	title	from_date	to_date
    10001	Georgi	Facello	Senior Engineer	6/26/1986	1/1/9999
    10004	Chirstian	Koblick	Engineer	12/1/1986	12/1/1995
    10004	Chirstian	Koblick	Senior Engineer	12/1/1995	1/1/9999
    
    So we did the analysis usng the latest title for the retirng employee. The retiring employess with most recent titles are available in[Retiring Employess with latest title](Data/unique_titles.csv)
    
2.There are only 2 employess with title "Manager" and more than 60% of the employess have "senior" level titles. Only 29% of employess seems to have a junior level title.
    count	title	            %of Total
    29414	Senior Engineer	        33%
    28254	Senior Staff	        31%
    14222	Engineer	            16%
    12243	Staff	                14%
    4502	Technique Leader	    5%
    1761	Assistant Engineer	    2%
    2	    Manager	0%
    90398   Total		
    
 See the the file [Count of retirees by Titel](Data/retiring_titles.csv) for above mentioned counts.

### Employees eligible for mentorship program:

3. There are more 90,398 employess retiring , but for mentorship program we only have 1940 employess.  The list of employes eligible for mentorship program is provided in the file [Employees eligible for mentorship program](Data/mentorship_eligibilty.csv) 
    
4. No employess eligible for metnroship program currently held Manager title. 
    
    
## Summary:


    
    
