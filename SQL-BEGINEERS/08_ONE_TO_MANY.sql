USE my_sql_bootcamp;


CREATE TABLE customers(
	id INT AUTO_INCREMENT PRIMARY KEY,
	first_name VARCHAR(100) NOT NULL,
	last_name VARCHAR(100) NOT NULL,
	email VARCHAR(100) NOT NULL
);


CREATE TABLE orders(
    id INT AUTO_INCREMENT PRIMARY KEY,
    order_date DATE,
    amount DECIMAL(8,2),
    customer_id INT,
    FOREIGN KEY(customer_id) REFERENCES customers(id)
);


INSERT INTO customers (first_name, last_name, email) 
VALUES ('Boy', 'George', 'george@gmail.com'),
       ('George', 'Michael', 'gm@gmail.com'),
       ('David', 'Bowie', 'david@gmail.com'),
       ('Blue', 'Steele', 'blue@gmail.com'),
       ('Bette', 'Davis', 'bette@aol.com');
       
       
INSERT INTO orders (order_date, amount, customer_id)
VALUES ('2016/02/10', 99.99, 1),
       ('2017/11/11', 35.50, 1),
       ('2014/12/12', 800.67, 2),
       ('2015/01/03', 12.50, 2),
       ('1999/04/11', 450.25, 5);
       
SELECT * FROM customers;
SELECT * FROM orders;


# CUSTOMERS SPENDING HIGH TO LOW
SELECT c.first_name , SUM(o.amount) AS total_spend FROM customers c
JOIN orders o
ON c.id=o.customer_id
GROUP BY o.customer_id
ORDER BY total_spend DESC;

# CUSTOMER WHO HAVE NOT ORDERED ANYTHING
SELECT c.first_name,c.last_name,o.amount FROM customers c
LEFT JOIN orders o
ON c.id=o.customer_id
WHERE o.customer_id IS NULL;



CREATE TABLE students(
	id INT AUTO_INCREMENT PRIMARY KEY,
	first_name VARCHAR(150)
);


CREATE TABLE papers(
	title VARCHAR(150) NOT NULL,
	grade INT NOT NULL,
	student_id INT,
	FOREIGN KEY(student_id) REFERENCES students(id) ON DELETE CASCADE
);

INSERT INTO students (first_name) VALUES 
('Caleb'), ('Samantha'), ('Raj'), ('Carlos'), ('Lisa');

INSERT INTO papers (student_id, title, grade ) VALUES
(1, 'My First Book Report', 60),
(1, 'My Second Book Report', 75),
(2, 'Russian Lit Through The Ages', 94),
(2, 'De Montaigne and The Art of The Essay', 98),
(4, 'Borges and Magical Realism', 89);


SELECT * FROM STUDENTS;
SELECT * FROM PAPERS;

SELECT first_name ,title, grade FROM students
JOIN papers
ON students.id=papers.student_id
ORDER BY grade DESC;

SELECT first_name,
IFNULL(title,'MISSING'),
IFNULL(grade,0)
FROM students
LEFT JOIN papers
ON students.id= papers.student_id;


SELECT first_name ,
		IFNULL(AVG(grade),0) AS avg
FROM students
LEFT JOIN papers
ON students.id=papers.student_id
GROUP BY studentS.id
ORDER BY avg DESC;

SELECT first_name,
	IFNULL (AVG(grade),0) AS average,
    CASE 
		WHEN  AVG(grade) >=75 THEN 'Passed'
        WHEN  AVG(grade) <75  THEN  'Fail'
	END AS passing_status
FROM students
LEFT JOIN papers
ON students.id=papers.student_id
GROUP BY students.id
ORDER BY average DESC;
    