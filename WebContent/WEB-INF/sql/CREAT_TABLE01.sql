create TABLE MyTable1 (
  Col1 INT
);
-- 주석 CTRL + /  
DESC MyTable1;

INSERT INTO MyTable1
(Col1)
VALUES (888);

SELECT * FROM MyTable1;

DELETE  FROM MYTable1
WHERE Col1 = 999;

UPDATE MyTable1
SET Col1 =777
WHERE Col1 = 888;

CREATE TABLE MyTable2
(
  Col1 INT,
  Col2 INT
);

DESC MyTable2;
INSERT INTO MyTable2
(Col1, Col2)
VALUES
(987, 123);
SELECT * FROM MyTable2;

