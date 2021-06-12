USE test;

CREATE TABLE Table05
(
name VARCHAR(255) PRIMARY KEY,
money int NOT NULL DEFAULT 0
);

INSERT INTO Table05(name, money)VALUES('kim', 10000);
INSERT INTO Table05(name, money)VALUES('lee', 10000); 

SELECT * FROM Table05;

-- 1
UPDATE Table05
SET money = 5000
WHERE name = 'kim';

-- 2
SELECT * FROM Table05;

-- 3
ROLLBACK;

-- 4
SELECT * FROM Table05;

-- 동시 실행

UPDATE Table05
SET money = 5000
WHERE name = 'kim';

UPDATE Table05
SET money = 15000
WHERE name = 'lee';

COMMIT; -- 커밋을 해야 db에 반영이된다

SELECT * FROM Table05;













