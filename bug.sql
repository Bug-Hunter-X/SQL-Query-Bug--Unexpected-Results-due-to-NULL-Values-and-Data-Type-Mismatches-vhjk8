```sql
SELECT * FROM employees WHERE department = 'Sales' AND salary > 100000;
```

This query might seem correct at first glance, but it could lead to unexpected behavior if there are any NULL values in the `salary` column.  The `salary > 100000` condition will not return rows where `salary` is NULL.  This is because NULL is considered unknown, and thus the comparison is neither true nor false.  This could lead to missing relevant data.

Another issue might be related to data type mismatches.  If the `department` column is not of type `VARCHAR` or similar string type, then the comparison `department = 'Sales'` could throw errors or produce unexpected results.