
/*# Data quality tests

1. The data needs to be 100 records of youtube channels(row count test)
2. The data needs 4 fields ( column count test)
3. The channel name column must be string format,and the other columns must be numerical data types (data type check)
4. each record must be unique in the dataset (duplcate count check)

Row count - 100
Column count - 4

Data types

channel_name = VARCHAR
total_subscribers = INTEGER
total_views = INTEGER
total_videos = INTEGER

Duplicate count = 0
*/
-- 1. Row count check

SELECT 
  COUNT(*) as no_of_rows
FROM 
  view_top_India_youtubers_2026;

---- 2. Column count check
SELECT 
   COUNT(*) as column_count 
FROM 
    INFORMATION_SCHEMA.COLUMNS
WHERE 
   TABLE_NAME = 'view_top_India_youtubers_2026'

-- 3. Data type check
SELECT 
   COLUMN_NAME,
   DATA_TYPE
FROM 
   INFORMATION_SCHEMA.COLUMNS
WHERE 
    TABLE_NAME = 'view_top_India_youtubers_2026'

-- Duplicate records check
SELECT channel_name,
        COUNT(*) as duplicate_count
FROM 
   view_top_India_youtubers_2026
GROUP BY 
   channel_name
HAVING 
    COUNT(*) > 1
 

