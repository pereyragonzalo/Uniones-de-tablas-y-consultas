USE Northwind
/*Consulta básica de ventas por cliente
Realiza una consulta que muestre el total de ventas
(cantidad de productos y valor total) para cada cliente. Usa las tablas Customers, Orders, y OrderDetails.*/

SELECT c.contact_name AS Nombre, SUM(od.quantity) AS Cantidad_Total, SUM(od.quantity * od.unit_price) AS Valor_total
FROM orders o
INNER JOIN order_details od ON o.order_id = od.order_id
INNER JOIN customers c ON o.customer_id = c.customer_id
GROUP BY c.contact_name
