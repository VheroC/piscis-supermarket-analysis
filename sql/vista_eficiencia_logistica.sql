SELECT Ship_Mode,
COUNT(*) AS Cantidad_envios,
ROUND(AVG(DATE_DIFF(Ship_date_ok, Order_date_ok, DAY)), 0) AS Promedio_Dias
FROM `piscis-supermarket.piscis_supermarket.Supermarket_sales`
GROUP BY Ship_Mode
ORDER BY Promedio_Dias ASC
