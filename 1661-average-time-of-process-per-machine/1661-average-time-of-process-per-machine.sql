-- Write your PostgreSQL query statement below
SELECT st.machine_id, ROUND(AVG(en.timestamp-st.timestamp)::NUMERIC,3) AS processing_time 
    FROM Activity st
JOIN Activity en ON en.machine_id = st.machine_id 
    AND en.activity_type = 'end' AND st.activity_type = 'start'
GROUP BY st.machine_id
