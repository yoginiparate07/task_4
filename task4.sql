---10 Question

select * from employee

---1. find the count of department 
select count(*) as department from employee

---2. find the distinct value from city
select distinct city from employee

---3. write the query on employee and find the office_id CA-2017-138520 or CA-2017-121755
select office_id from employee
where office_id = 'CA-2017-138520' OR office_id = 'CA-2017-121755'

---4.write the query on employee and order by experience,limit is 20
select office_id,experience from employee
order by experience
limit 20

---5. find the minimum and maximum salary for each department,where the salary is greater than 21000.00 
select department,min(salary) as min_salary , max(salary) as max_salary
from employee
where salary > 21000.00
group by department


---6.find the age is greater then 30 and experience is less than 20
select office_id,age,experience from employee
where age > 30 And experience < 20
limit 100


--7.write the query on employee where the department is either 'Finance','Sales','IT' and calculate the sum & avg
select department,
	sum(age) AS sum_Of_age,
	avg(age) AS avg_Of_age
    from employee
where department in ('IT','Finance','Sales')
group by department

---8.select the count of experience grouped by job_title
select job_title,count(*) as experience
from employee
group by job_title

---9.write the query on employee and find the salary used between
select emp_id,salary from employee
where salary between '81800.00' and '88000.00'


---10. write a query on employee caluclate the sum,min,max,avg and count of salary column. and group by job_title
select job_title,
sum(salary)as sum_salary,
min(salary) as min_salary,
max(salary) as max_salary,
avg(salary) as avg_salary,
count(salary) as count_salary from employee
group by job_title

----11.caluclate  the totol sum of salary grouped by office
select office_id,sum(salary) from employee
group by office_id
limit 150


