SELECT day, COUNT(*) as total_assignments FROM assignments where GROUP BY day HAVING COUNT(*) >= 10 ORDER BY day;