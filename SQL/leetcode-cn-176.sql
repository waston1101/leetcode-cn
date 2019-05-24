--- 无法返回null值

select IFNULL((select distinct salary  from employee order by salary desc limit 1,1),null) as SecondHighestSalary