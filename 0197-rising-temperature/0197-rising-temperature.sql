SELECT d1.id FROM Weather d1
JOIN Weather d0 ON d0.recordDate + Interval '1 day' = d1.recordDate
WHERE d0.temperature < d1.temperature; 