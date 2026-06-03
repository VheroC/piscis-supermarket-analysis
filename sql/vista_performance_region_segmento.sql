SELECT Region,
Segment,
CAST(ROUND(SUM(Sales)) AS INT64) AS Ventas,
ROUND(SUM(Profit)/SUM(Sales)*100, 1) AS Margen_ganancia
FROM `piscis-supermarket.piscis_supermarket.Supermarket_sales`
GROUP BY Region, Segment
ORDER BY Region, Margen_ganancia DESC
