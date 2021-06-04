CREATE TABLE MyTable7
(
id int,
name VARCHAR(255)
);

INSERT INTO MyTable7
(id, name)
VALUES (3, 'hello');

SELECT * FROM MyTable7;

INSERT INTO MyTable7
(id) VALUES (4);

INSERT INTO MyTable7
(name) VALUES ('donald');

-- not null (제약사항 -- 열이 null값을 가질수 없도록 한다)
CREATE TABLE Mytable8
(
id INT NOT NULL,
name VARCHAR(255) NOT NULL
);
INSERT INTO MyTable8
(id, name)
VALUE (3, 'hello');
SELECT * FROM MyTable8;

INSERT INTO MyTable8
(id) VALUES (5); -- x

INSERT INTO MyTable8
(name) VALUES ('donald'); -- x

DESC MyTablel8;   -- desc 테이블 확인 하는거



