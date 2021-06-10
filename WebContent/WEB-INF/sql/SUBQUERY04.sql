USE test;

SELECT now();

SELECT * FROM Customers
WHERE EXISTS ( SELECT now())
;

SELECT * FROM Customers
WHERE NOT EXISTS ( SELECT now())
;

-- W3SCHOOL
SELECT SupplierName
FROM Suppliers
WHERE EXISTS (SELECT ProductName 
			  FROM Products 
              WHERE Products.SupplierID = Suppliers.SupplierID
              AND Price < 20);
              
DESC Suppliers;
SELECT * FROM Suppliers;              
              
-- subquery
SELECT ProductName
FROM Products 
WHERE Products.SupplierID = 1
AND Price < 20


