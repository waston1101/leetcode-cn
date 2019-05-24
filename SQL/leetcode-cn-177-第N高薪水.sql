--- 说明：学习DECLARE用法；学习自定义函数的方法

CREATE FUNCTION getNthHighestSalary(N INT) RETURNS INT
BEGIN 
DECLARE P INT; SET P = N; SET P = P-1; 
  RETURN (
      # Write your MySQL query statement below.
      select IFNULL(
          (select distinct salary  from employee order by salary desc limit P,1),null) as SecondHighestSalary
      
  );
END