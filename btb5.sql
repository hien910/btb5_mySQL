-- 1
select name FRom Customer
where referee_id !=2 or referee_id is null;

-- 2
select product_id
from Products
where low_fats = 'Y' and recyclable ='Y';

-- 3
select tweet_id 
from Tweets 
where char_length(content) > 15;

-- 4
select Employee.name, Bonus.bonus
from Bonus FULL join Employee on Bonus.empId = Employee.empId
where Bonus.bonus < 1000 or Bonus.bonus is null;

-- 5
select Employees.employee_id
from Employees
left join Salaries on Employees.employee_id = Salaries.employee_id
where salary is null
union
select Salaries.employee_id
from Salaries 
left join Employees on Employees.employee_id = Salaries.employee_id
where name is null
order by employee_id ASC;