-- Suppose you want to find the duplicated values from column
-- target_field in target_table
SELECT  *
FROM target_table t1
WHERE target_field IN (
    SELECT target_field
    FROM target_table t2
    WHERE t2.id <> t1.id
    )