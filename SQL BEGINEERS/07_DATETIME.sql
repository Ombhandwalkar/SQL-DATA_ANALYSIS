CREATE TABLE people (name VARCHAR(100), birthdate DATE, birthtime TIME, birthdt DATETIME);

INSERT INTO people (name, birthdate, birthtime, birthdt)
VALUES('Padma', '1983-11-11', '10:07:35', '1983-11-11 10:07:35');

INSERT INTO people (name, birthdate, birthtime, birthdt)
VALUES('Larry', '1943-12-25', '04:10:42', '1943-12-25 04:10:42');

SELECT * FROM people;

SELECT birthdate,DATE_FORMAT(birthdate,'%m-%d-%y at %h:%m')AS DATE_ FROM people;

# DIFFERENCE BETWEEN CURRENT TIME 
SELECT DATEDIFF(NOW(),birthdate) FROM people;

SELECT DAYOFYEAR('2020-03-01');


SELECT birthdt, DATE_ADD(birthdt, INTERVAL 30 DAY) AS 'after adding 30days'
FROM people;
INSERT INTO people(name,birthdate,birthtime,birthdt)VALUES
('Richard',CURDATE(),CURTIME(),NOW());


SELECT birthdate ,birthdate + INTERVAL 10 YEAR FROM people;


# NEW DATA
CREATE TABLE comments(
	comment VARCHAR(150) NOT NULL,
	created_at TIMESTAMP DEFAULT NOW(),
	change_at TIMESTAMP DEFAULT NOW() ON UPDATE CURRENT_TIMESTAMP
);


INSERT INTO comments(comment)
VALUES('I like cats'),
	('today is pretty hot'),
	('I can\'t stop watching movies :)');
    
    
UPDATE comments
SET comment = 'I like cats and dogs'
WHERE comment = 'I like cats';


# NEW DATE

CREATE TABLE inventory (
    item_name VARCHAR(100),
    price DECIMAL(8,2),
    quantity INT
);

SELECT CURTIME();

SELECT CURDATE();

SELECT DAY(NOW());
SELECT DAYOFWEEK(NOW());
SELECT DATE_FORMAT(NOW(),+'%w')+1;