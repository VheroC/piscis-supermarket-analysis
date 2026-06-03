SELECT 
  CASE 
    WHEN Discount = 0 THEN '0%'
    WHEN Discount <= 0.10 THEN '1-10%'
    WHEN Discount <= 0.20 THEN '11-20%'
    WHEN Discount <= 0.30 THEN '21-30%'
    WHEN Discount <= 0.50 THEN '31-50%'
    ELSE '51-80%'
  END AS Rango_Descuento,
  ROUND(SUM(Profit)/SUM(Sales)*100, 1) AS Margen_Ganancia,
  COUNT(*) AS Cantidad_Transacciones
FROM `piscis-supermarket.piscis_supermarket.Supermarket_sales`
GROUP BY Rango_Descuento
ORDER BY Margen_Ganancia DESC
