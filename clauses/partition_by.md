# Partition by

Use case compared to Group by
Group by groups records with similar row values and returns a set
Note that if a field is not in group clause, an error will be thrown
if the field is included in the select clause


The partition by clause allows us to include other fields that are not
aggregated. All rows will be returned with aggreated values.


```sql
SELECT Customercity, 
       AVG(Orderamount) OVER(PARTITION BY Customercity) AS AvgOrderAmount, 
       MIN(OrderAmount) OVER(PARTITION BY Customercity) AS MinOrderAmount, 
       SUM(Orderamount) OVER(PARTITION BY Customercity) TotalOrderAmount
FROM [dbo].[Orders];
```

SQL statement obtained from [here](https://www.sqlshack.com/sql-partition-by-clause-overview/)