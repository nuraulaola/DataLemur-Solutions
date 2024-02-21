WITH ranked_products AS(
SELECT 
    category,
    product,
    SUM(spend) AS total_spend,
    ROW_NUMBER() OVER (PARTITION BY category ORDER BY SUM(spend) DESC) AS product_rank
  FROM
    product_spend
  WHERE 
    EXTRACT(YEAR FROM transaction_date) = 2022
  GROUP BY 
    category,
    product
)
SELECT 
    category,
    product,
    total_spend
FROM
    ranked_products
WHERE
    product_rank <= 2;
