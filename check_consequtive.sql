/*
suppose you want to find out if the num occurs at least
3 times, then the following query will check if the prev
and next instance are of the same value
https://leetcode.com/problems/consecutive-numbers
*/
with cte as 
(select 
    lag(num) over () as prev,
    num as curr,
    lead(num) over () as next
from logs)

select distinct curr as consecutivenums
from cte
where curr=prev and curr=next;
