### Set 1

1. **Create a table**: Create a table named 'Employee_Details' with columns 'ID' (number type), 'Name' (varchar type), 'DOB' (date type), and 'Department_ID' (number type).

create table  Employee_Details (
ID number,
Name varchar2(50),
DOB date ,
Department_ID number)

2. **Insert operation**: Insert a row into the 'Employees' table where first_name is 'John', last_name is 'Doe', email is '[jdoe@mail.com](mailto:jdoe@mail.com)', and hire_date is '15-JAN-2022'.
insert into Employees (first_name,last_name,email,hire_date)
values ('John','Doe','[jdoe@mail.com](mailto:jdoe@mail.com)',to_date('15-01-2022','dd-mm-yyyy'))

3. **Select with condition**: Write a SELECT statement to get the details of all the employees who were hired after '01-JAN-2020'.

select * from employees 
where hire_date >'01-JAN-2020'

4. **Character Function**: Write a query using the INITCAP function to return all job titles from the 'Jobs' table with the first letter capitalized.

select INITCAP(job_title)
from jobs 

5. **Inner Join**: Write a query to join the 'Employees' and 'Departments' tables to get the department names for all employees.
 select * from employees e
 join departments d on e.department_id=d.department_id 
 
 
 ### Set 2

1. **Alter table**: Add a column 'Salary' of number type to the 'Employee_Details' table.

alter table Employee_Details 
add Salary number;

2. **Update operation**: Update the 'Employees' table to set the 'commission_pct' to 0.2 for all employees with the 'job_id' of 'SA_REP'.
update Employees
set commission_pct=0.2
where job_id='SA_REP'

3. **Aggregate Function**: Write a query to find the average salary in the 'Employees' table.
select avg(salary)
from employees 

4. **Date Function**: Write a query to return the hire date and number of years since hire for each employee in the 'Employees' table. Use the SYSDATE and EXTRACT functions.

select hire_date,extract(year from sysdate) -extract(year from hire_date)
from employees 

5. **Left Join**: Write a query to get all employees and their department names, including those not assigned to a department.
select d.department_name,e.*
from employees e
left join departments d on e.department_id=d.department_id


### Set 3

1. **Create a table**: Create a table named 'Project_Details' with columns 'Project_ID' (number type), 'Project_Name' (varchar type), 'Start_Date' (date type), 'End_Date' (date type) and 'Manager_ID' (number type).
create table Project_Details (
Project_ID number,
Project_Name varchar2(50),
Start_Date date,
End_Date date, 
Manager_ID number);

2. **Delete operation**: Delete from 'Employees' where 'first_name' is 'John' and 'last_name' is 'Doe'.
delete  from Employees 
where first_name='John' and last_name='Doe'

3. **Select with sorting**: Write a SELECT statement to get all the employees in descending order of hire date.
select * from employees 
order by hire_date desc

4. **Number Function**: Write a query using the ROUND function to round off the salaries in the 'Employees' table to the nearest hundred.
select round(salary,-2),salary 
from employees 

5. **Right Join**: Write a query to get all departments and their employees, including departments without employees.
select d.department_name,e.*
from employees e
right join departments d on e.department_id=d.department_id