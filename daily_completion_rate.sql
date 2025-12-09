-- Daily completion rate over last 150 days
SELECT event_date,
       SUM(CASE WHEN stage = 'Complete' THEN 1 ELSE 0 END) AS completed_orders,
       COUNT(*) AS total_started,
       ROUND(100.0 * SUM(CASE WHEN stage = 'Complete' THEN 1 ELSE 0 END) / COUNT(*), 2) AS completion_rate
FROM funnel_events
GROUP BY event_date
ORDER BY event_date;