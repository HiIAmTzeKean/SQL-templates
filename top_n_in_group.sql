/*
Given a task to get the top N rows from each group, one can use a window
function to solve the problem. Here N=3 and we want to find the top 3
people with the highest salary from each department
https://leetcode.com/problems/department-top-three-salaries
*/
with cte as (
    select 
        dense_rank() over (partition by departmentid order by salary desc) as pos,
        name,
        salary,
        departmentid
    from employee
)
select d.name as department, e.name as employee, e.salary
from cte as e left join department as d on e.departmentid=d.id
where e.pos<=3;