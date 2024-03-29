SELECT * FROM Member;
DESC Member;

CREATE TABLE Board
(
   id INT PRIMARY KEY AUTO_INCREMENT,
   title VARCHAR(255) NOT NULL,
   body VARCHAR(2047) NOT NULL,
   memberID VARCHAR(255) NOT NULL,
   inserted TIMESTAMP DEFAULT now()
);

DESC Board;
SELECT * FROM Board;
SELECT * FROM Member;

USE test2;

DELETE FROM Board
WHERE MemberId NOT IN(
  SELECT id FROM Member
);

SELECT * FROM Board;

ALTER TABLE Board
ADD FOREIGN KEY (MemberId)
REFERENCES Member(id);







