SELECT Category,
ROUND(SUM(Profit)/SUM(Sales)*100, 1) AS Margen_ganancia
FROM `piscis-supermarket.piscis_supermarket.Supermarket_sales`
GROUP BY Category
ORDER BY Margen_ganancia DESC
