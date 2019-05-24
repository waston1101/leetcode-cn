--- 无法返回null值

select IFNULL(( salary),null) as SecondHighestSalary  from employee order by salary desc limit 1,1