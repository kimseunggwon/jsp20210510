-- WHERE  : row를 조건으로 필터
SELECT * 
FROM Customers 
WHERE Country="Mexico";

SELECT *
FROM Customers
WHERE CustomerID = 1;

SELECT * FROM Products
WHERE Price = 18;

SELECT * FROM Products
WHERE Price > 30;

SELECT * FROM Products
WHERE Price < 30;

SELECT * FROM Products
WHERE Price >= 30;

SELECT * FROM Products
WHERE Price <= 30;

SELECT * FROM Products
WHERE Price <> 30;  -- != 가능

SELECT * FROM Products
WHERE Price BETWEEN 50 AND 60;

-- LIKE
SELECT * FROM Customers
WHERE City LIKE 'S%';  -- 대소문자 구분 안함

SELECT * from Customers
where City like '%g';  -- g로끝나는 city 조회

SELECT * from Customers
where City like '%z%';   -- 가운데z가있으면 조회

SELECT * from Customers
where Country like '%us%';  -- 가운데 us 있으면 조회

-- IN
SELECT * FROM Customers
WHERE City IN ('Paris','London');

SELECT * FROM Customers
WHERE City IN ('Paris','London','Berlin');

SELECT * FROM Customers
WHERE City <> 'Berlin';

SELECT * FROM Customers
WHERE City != 'Berlin';
-- NOT !=   똑같음
SELECT * FROM Customers
WHERE NOT City <> 'Berlin';

-- AND
SELECT * FROM Customers
WHERE Country ='Germamy' AND City ='Berlin';

SELECT * FROM Customers
WHERE City='Berlin' OR City='München';

SELECT * FROM Customers
WHERE Country='Germany' OR 
(CustomerName LIKE '%S%' AND City LIKE '%CH%');









