USE test;

CREATE TABLE Table01
(
   id INT PRIMARY KEY AUTO_INCREMENT,
   name VARCHAR(255),
   bookId INT
);

CREATE TABLE Table02
(
    id INT PRIMARY KEY AUTO_INCREMENT,
    bookName VARCHAR(255)
);

INSERT INTO Table01
(name, bookId)
VALUE ('kim', 1);

INSERT INTO Table01
(name, bookId)
VALUE ('lee', 2);

INSERT INTO Table01
(name, bookId)
VALUE ('choi', 3);

INSERT INTO Table01
(name, bookId)
VALUE ('park', 4);

INSERT INTO Table02
(bookName)
VALUES ('book1');

INSERT INTO Table02
(bookName)
VALUES ('book2');

INSERT INTO Table02
(bookName)
VALUES ('book3');

INSERT INTO Table02
(bookName)
VALUES ('book4');

SELECT * FROM Table01; -- 4개 record

SELECT * FROM Table02; -- 4개 record

SELECT * FROM Table01, Table02; -- 16개 record

 -- join 테이블 2개를 같이 결합할수있다
 SELECT * FROM
 Table01 JOIN Table02
 ON Table01.bookId = Table02.id;
 
 -- alias 별칭으로 이름을 줄여서 쓸수있다
 -- table
 SELECT * FROM
 Table01 as t1 JOIN Table02 AS t2
 ON t1.bookId = t2.id;
 
 SELECT * FROM
 Table01  t1 JOIN Table02 AS t2
 ON t1.bookId = t2.id;
 
 
 -- column
 SELECT 
t1.id AS id1,
t1.name AS name1,
t1.bookId AS bookId,
t2.id AS id2,
t2.bookName AS bname
FROM
Table01 t1 JOIN Table02 t2
On t1.bookId = t2.id;
 
 SELECT
 t1.id id1,
 t1.name name1,
 t1.bookId bookId,
 t2.id id2,
 t2.bookName bname
 FROM
 Table01 t1 JOIN Table02 t2
 ON t1.bookId = t2.id;
 
 
 
 
 











