SELECT pi2.agr_id, pp2.sum_pp, pi2.sum_pi 
FROM	
	(
	SELECT pi1.agr_id, SUM(pi1.payment_sum) sum_pi FROM
		(
			SELECT DISTINCT pi.* FROM #payments_principal  pp
			FULL OUTER JOIN #payments_interest pi ON pi.agr_id = pp.agr_id
			WHERE (pp.agr_id IS NOT NULL) AND (pi.agr_id IS NOT NULL)
		)       pi1
	GROUP BY
		pi1.agr_id
	) pi2
LEFT JOIN
	(
	SELECT pp1.agr_id, SUM(pp1.payment_sum) sum_pp FROM
		(
			SELECT DISTINCT pp.* FROM #payments_principal  pp
			FULL OUTER JOIN #payments_interest pi ON pp.agr_id = pi.agr_id
			WHERE (pp.agr_id IS NOT NULL) AND (pi.agr_id IS NOT NULL)
		)       pp1
	GROUP BY
		pp1.agr_id
	) pp2
ON pi2.agr_id = pp2.agr_id
