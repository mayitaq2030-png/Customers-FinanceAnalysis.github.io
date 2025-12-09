-- Login outcomes breakdown
SELECT outcome, 
       COUNT(*) AS total_users
FROM login_events
GROUP BY outcome;