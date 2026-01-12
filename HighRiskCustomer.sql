-- Return high-risk customers
SELECT
    c.customer_id,
    a.current_balance,
    a.credit_limit,
    (a.current_balance * 1.0 / a.credit_limit) AS credit_utilisation,
    COUNT(d.default_date) AS previous_defaults
FROM customers c
JOIN accounts a
    ON c.customer_id = a.customer_id
LEFT JOIN defaults d
    ON c.customer_id = d.customer_id
WHERE (a.current_balance * 1.0 / a.credit_limit) > 0.80
GROUP BY
    c.customer_id,
    a.current_balance,
    a.credit_limit
HAVING COUNT(d.default_date) >= 1;