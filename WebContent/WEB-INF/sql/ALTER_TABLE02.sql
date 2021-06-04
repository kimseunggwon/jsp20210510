USE test2;
DESC Member;

ALTER TABLE Member
ADD PRIMARY KEY(id);

ALTER TABLE Member
MODIFY COLUMN password Varchar(255) NOT NULL;

ALTER TABLE Member
MODIFY COLUMN name Varchar(255) NOT NULL;

ALTER TABLE Member
MODIFY COLUMN birth DATE NOT NULL;

ALTER TABLE Member
MODIFY COLUMN inserted  TIMESTAMP  NOT NULL DEFAULT now();

INSERT INTO Member
(id, password, name, birth)
VALUES
('kim','guw','guw','2011-01-01');

SELECT * FROM Member;



