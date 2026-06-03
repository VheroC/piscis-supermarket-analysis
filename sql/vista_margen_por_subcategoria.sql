SELECT Sub_Category,
CAST(ROUND(SUM(Profit)) AS INT64) AS Profit_Total
FROM `piscis-supermarket.piscis_supermarket.Supermarket_sales`
GROUP BY Sub_Category
QUALIFY ROW_NUMBER() OVER (ORDER BY SUM(Profit) DESC) <= 5
OR ROW_NUMBER() OVER (ORDER BY SUM(Profit) ASC) <= 2
ORDER BY Profit_Total DESC
