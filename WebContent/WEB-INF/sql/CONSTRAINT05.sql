-- DEFAULT 

CREATE TABLE MyTalbe13
(
   id INT PRIMARY KEY AUTO_INCREMENT,
   title VARCHAR(255) NOT NULL,
   body VARCHAR(255) NOT NULL,
   inserted TIMESTAMP
);

INSERT INTO MyTable13
(title, body, inserted)
VALUES
('title1', 'body1',now());

SELECT * FROM MyTable13;