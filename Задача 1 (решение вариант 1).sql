SELECT
	emp_name,
	task_count
	FROM
		(
			SELECT
			e.emp_name,
			(
				SELECT COUNT(t.id) FROM #employee e1
				LEFT JOIN #tasks t ON t.assignee_id = e1.id
				WHERE e1.id = e.id
				GROUP BY e1.id
				HAVING COUNT(t.id) < 3
			)       task_count
			FROM #employee e
		) e2
	WHERE
		task_count IS NOT NULL
