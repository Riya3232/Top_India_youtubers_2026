/*

# 4. Duplicate records check

-- 1. Check for duplicate rows in the view
-- 2. Group by the channel name
-- 3. Filter for groups with more than one row

*/

SELECT channel_name,
        COUNT(*) as duplicate_count
FROM 
   view_top_India_youtubers_2026
GROUP BY 
   channel_name
HAVING 
    COUNT(*) > 1
