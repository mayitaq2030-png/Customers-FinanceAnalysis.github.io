-- Customer funnel summary by stage
SELECT stage,
       COUNT(*) AS total_users,
       ROUND(100.0 * COUNT(*) / SUM(COUNT(*)) OVER (), 2) AS pct_of_total
FROM customer_funnel
GROUP BY stage
ORDER BY stage;