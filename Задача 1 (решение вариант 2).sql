-- РЕШЕНИЕ 2 ДЛЯ ЗАДАЧИ 1
SELECT 
	e.emp_name, 
	t.cnt 
	FROM #employee e
	LEFT JOIN
		(
			SELECT COUNT(id) cnt, assignee_id FROM #tasks
			GROUP BY assignee_id
			HAVING COUNT(id) >= 3
		) t
	ON e.id = t.assignee_id
	WHERE t.assignee_id IS NULL
