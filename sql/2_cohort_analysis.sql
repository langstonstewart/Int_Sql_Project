
SELECT
	cohort_year,
	COUNT(DISTINCT ca.customerkey) AS total_customers,
	SUM(ca.net_revenue) AS total_net_revenue,
	SUM(ca.net_revenue) / COUNT(DISTINCT ca.customerkey) AS customer_revenue

FROM cohort_analysis AS ca

WHERE
	orderdate = ca.first_purchase_date 

GROUP BY 
	cohort_year