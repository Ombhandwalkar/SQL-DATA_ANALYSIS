CREATE DATABASE IF NOT EXISTS my_sql_bootcamp;

USE my_sql_bootcamp;

CREATE TABLE pastries(
name VARCHAR(50) PRIMARY KEY NOT NULL,
quantity INT DEFAULT 0);

SHOW TABLES;

DESC pastries;

DROP TABLE pastries;

SHOW TABLES;
