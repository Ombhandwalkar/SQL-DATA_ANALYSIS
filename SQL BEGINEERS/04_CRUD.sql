USE my_sql_bootcamp;

CREATE TABLE shirts(
shirt_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
article VARCHAR(50),
color VARCHAR(50),
shirt_size VARCHAR(10),
last_worn INT );


SHOW TABLES;

DESC shirts;


INSERT INTO shirts(article,color,shirt_size,last_worn)
VALUES ('t-shirt', 'white', 'S', 10),
('t-shirt', 'green', 'S', 200),
('polo shirt', 'black', 'M', 10),
('tank top', 'blue', 'S', 50),
('t-shirt', 'pink', 'S', 0),
('polo shirt', 'red', 'M', 5),
('tank top', 'white', 'S', 200),
('tank top', 'blue', 'M', 15);

SELECT * FROM shirts;



INSERT INTO shirts(article,color,shirt_size,last_worn)
VALUES('polo shirt','purple','M',50);



SELECT article,color
FROM shirts;


SELECT article,color,shirt_size,last_worn FROM shirts
WHERE shirt_size = 'M';



UPDATE shirts
SET shirt_size = 'L'
WHERE article = 'polo shirt';


UPDATE shirts
SET last_worn = 0
WHERE last_worn = 15;


ALTER TABLE shirts
MODIFY COLUMN shirt_size VARCHAR(2);



UPDATE shirts
SET color = 'off white',
	shirt_size = 'XS'
WHERE color = 'white';


DELETE FROM shirts
WHERE last_worn = 200;


DELETE FROM shirts
WHERE article = 'tank top';


DELETE FROM shirts;



