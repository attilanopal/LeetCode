SELECT st.machine_id, ROUND(AVG(en.timestamp - st.timestamp),3) as processing_time
FROM
  Activity st
  JOIN
  Activity en
  ON
    en.activity_type = 'end' AND
    st.activity_type = 'start' AND
    en.machine_id = st.machine_id AND
    en.process_id = st.process_id
GROUP BY st.machine_id
ORDER BY machine_id ASC
;