CREATE DATABASE IF NOT EXISTS OnlineRetailDB;
USE OnlineRetailDB;

SELECT * FROM data;
SELECT Description, Quantity, UnitPrice
FROM data
WHERE Quantity > 5 AND UnitPrice > 3;


SELECT InvoiceNo, Description, Quantity, UnitPrice
FROM data
ORDER BY Quantity DESC, UnitPrice ASC;

SELECT Description, SUM(Quantity) AS TotalQuantity, AVG(UnitPrice) AS AverageUnitPrice
FROM data
GROUP BY Description;

SELECT column_name(s)
FROM table1
INNER JOIN table2
ON table1.column_name = table2.column_name;


SELECT column_name(s)
FROM table1
LEFT JOIN table2
ON table1.column_name = table2.column_name;


SELECT column_name(s)
FROM table1
RIGHT JOIN table2
ON table1.column_name = table2.column_name;


SELECT Description, Quantity
FROM data
WHERE Quantity > (SELECT AVG(Quantity) FROM data);


CREATE VIEW HighQuantityProducts AS
SELECT Description, Quantity, UnitPrice
FROM data
WHERE Quantity > 10;

-- To query the view:
SELECT * FROM HighQuantityProducts;

CREATE INDEX idx_description ON data (Description);
CREATE INDEX idx_stockcode ON data (StockCode);

SELECT * FROM DATA;

