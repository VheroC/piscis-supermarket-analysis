SELECT 
  DATE_TRUNC(Order_date_ok, MONTH) AS Periodo,
  CAST(ROUND(SUM(Sales)) AS INT64) AS Ventas,
  CAST(ROUND(SUM(Profit)) AS INT64) AS Ganancia
FROM `piscis-supermarket.piscis_supermarket.Supermarket_sales`
GROUP BY Periodo
ORDER BY Periodo ASC
