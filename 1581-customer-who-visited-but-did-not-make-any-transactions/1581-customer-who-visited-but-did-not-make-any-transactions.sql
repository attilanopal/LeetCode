SELECT vi.customer_id,COUNT(*) AS "count_no_trans" FROM Visits vi LEFT JOIN Transactions tr
ON vi.visit_id = tr.visit_id
WHERE tr.amount IS NULL
GROUP BY vi.customer_id
ORDER BY count_no_trans DESC
;