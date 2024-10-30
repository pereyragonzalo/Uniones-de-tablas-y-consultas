# Consulta Básica de Ventas por Cliente

## Descripción
Este ejercicio utiliza una consulta en SQL para calcular el total de ventas por cliente, considerando tanto la cantidad total de productos comprados como el valor total generado. Está diseñado para demostrar cómo realizar consultas básicas que incluyan la agregación de datos y uniones de tablas en SQL Server utilizando la base de datos Northwind.

## Objetivo
El objetivo es calcular el total de ventas por cliente, mostrando:
1. **Cantidad Total de Productos** comprados por cada cliente.
2. **Valor Total de Ventas** generado por cada cliente.

## Tablas Utilizadas
Para esta consulta, se utilizan las siguientes tablas de la base de datos Northwind:
- `Customers`: Contiene información de los clientes.
- `Orders`: Registra las órdenes realizadas por los clientes.
- `OrderDetails`: Detalla los productos pedidos en cada orden.

## Consulta SQL
La consulta SQL para obtener la cantidad total de productos y el valor total de ventas por cliente es la siguiente:

```sql
SELECT 
    c.contact_name AS Nombre, 
    SUM(od.quantity) AS Cantidad_Total, 
    SUM(od.quantity * od.unit_price) AS Valor_total
FROM 
    orders o
INNER JOIN 
    order_details od ON o.order_id = od.order_id
INNER JOIN 
    customers c ON o.customer_id = c.customer_id
GROUP BY 
    c.contact_name;
