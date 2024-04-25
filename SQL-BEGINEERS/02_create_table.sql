USE my_sql_bootcamp;

CREATE TABLE employees(
 id INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
 name VARCHAR(100) NOT NULL,
 surname VARCHAR(100) NOT NULL,
 middlename VARCHAR(100) ,
 age INT NOT NULL,
 current_status VARCHAR(100) NOT NULL DEFAULT 'employed');
 
 INSERT INTO employees(id,name,surname,age,current_status)
 VALUES
 (01,'Virat','Kohli',30,'Employed'),
 (02,'Gautam','Gambhir',38,'Unemployed');
 
 
