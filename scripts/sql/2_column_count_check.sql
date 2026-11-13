/*
# 2. Column count check 

Count the total number of columns (or fields) are in the SQL view

*/

SELECT 
   COUNT(*) as column_count 
FROM 
    INFORMATION_SCHEMA.COLUMNS
WHERE 
   TABLE_NAME = 'view_top_India_youtubers_2026'
