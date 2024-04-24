USE my_sql_bootcamp;

CREATE TABLE cats(
cat_id INT AUTO_INCREMENT NOT NULL,
name VARCHAR(100),
breed VARCHAR(100),
age INT ,
PRIMARY KEY(cat_id));


DESC cats;

INSERT INTO cats(name,breed,age)
VALUES
	   ('Ringo', 'Tabby', 4),
       ('Cindy', 'Maine Coon', 10),
       ('Dumbledore', 'Maine Coon', 11),
       ('Egg', 'Persian', 4),
       ('Misty', 'Tabby', 13),
       ('George Michael', 'Ragdoll', 9),
       ('Jackson', 'Sphynx', 7);
       
SELECT * FROM cats;

SELECT cat_id FROM cats;

#ONLY NAME AND BREEDS
SELECT name,breed FROM cats;


# TABBY BREEDS CAT ONLY 
SELECT name,breed FROM cats
WHERE breed LIKE 'Tabby';


# CAT ID IS AGE
SELECT name,breed FROM cats
WHERE cat_id=age;



# SET JACKSON'S NAME TO JACK
UPDATE cats 
SET name= 'jack'
WHERE name='jackson';

SELECT * FROM cats
WHERE name='jack';


# Change Ringo's breed to "British Shorthair"
UPDATE cats
SET name='British Shorthair'
WHERE name='Ringo';

SELECT * FROM cats
WHERE name='British Shorthair';


#UPDATE BOTH Maine Coon AGE TO 12
UPDATE cats
SET age=12
WHERE breed ='Maine Coon';



#DELETE ALL 4 YEARS CAT
DELETE FROM  cats
WHERE age=4;

# DELETE CATS WHOSE AGE IS AGE_ID
DELETE FROM cats
WHERE cat_id=age;


#DELETE ALL CATS 
DELETE FROM cats;


DESC cats;

SELECT * FROM cats;
