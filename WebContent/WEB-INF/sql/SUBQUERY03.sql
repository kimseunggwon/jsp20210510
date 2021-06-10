
-- order datals 수량이 10로찍힌 값을 얻어 냄
SELECT ProductName
FROM Products
WHERE ProductID = ANY
  (SELECT ProductID
  FROM OrderDetails
  WHERE Quantity = 10);
  
SELECT ProductID
FROM OrderDetails
WHERE Quantity = 10;

-- orderdatails 주문의 상세내용들
SELECT * FROM OrderDetails;

-- ALL
SELECT ProductName
FROM Products
WHERE ProductID = ALL
  (SELECT ProductID
  FROM OrderDetails
  WHERE Quantity = 10);