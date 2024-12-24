```sql
SELECT * FROM employees WHERE department = 'Sales' AND (salary > 100000 OR salary IS NULL);
--Alternative solution using COALESCE to handle NULLs:
--SELECT * FROM employees WHERE department = 'Sales' AND COALESCE(salary, 0) > 100000;
```

This solution uses the `OR salary IS NULL` condition to explicitly include rows where the salary is NULL.  The alternative solution uses `COALESCE(salary, 0)` which replaces any NULL salary values with 0. This is a suitable alternative if it makes sense in the context of the application to treat a NULL salary as 0. Choose the approach that best fits your specific data and requirements.