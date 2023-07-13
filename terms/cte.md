# CTE

Common table expression.

## Purpose

Generally used to make the syntax look cleaner and readable. This method can be used to create multiple temporary views which can eventually flow into a final query to combine these view

## Code

```sql
with cte as 
(
    select * from table
    -- the complex queries will go in
    -- here. Multiple cte can be created
    -- allowing chaining of complex views
)
select target from cte;
```