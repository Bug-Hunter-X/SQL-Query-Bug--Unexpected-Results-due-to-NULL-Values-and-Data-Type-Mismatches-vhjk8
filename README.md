# SQL Query Bug: Unexpected Results due to NULLs and Data Type Mismatches

This repository demonstrates a common SQL query error involving NULL values and potential data type mismatches.  The `bug.sql` file contains a query that may produce unexpected results due to how it handles NULL values in the salary column and potential inconsistencies in data types.

The `bugSolution.sql` file provides a corrected query that addresses these issues, offering a more robust and reliable approach.

## Bug Description:

The original query fails to consider NULL values appropriately, potentially omitting relevant data.  It also lacks consideration for the impact of potential data type inconsistencies between the query and table columns.

## Solution:

The solution utilizes the `IS NULL` or `IS NOT NULL` operators to correctly handle NULL values, ensuring all relevant data is accounted for. The solution also includes better type handling to prevent unexpected results related to data type mismatches.