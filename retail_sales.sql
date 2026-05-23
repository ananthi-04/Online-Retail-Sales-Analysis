CREATE DATABASE OnlineRetailDB;
USE OnlineRetailDB;
CREATE TABLE retail_sales(
                transaction_id int primary key,
                order_date date,
                customer_id int,
                gender varchar(10),
                age int,
                product_category varchar(50),
                quantity int,
                price decimal(10,2),
                total_amount decimal(10,2)
                );
 INSERT INTO retail_sales VALUES(1,'2023-01-05',101,'Female',23,'Electronics',1,15000,15000),
				(2,'2023-01-07',102,'Male',35,'Clothing',2,1200,2400),
				(3,'2023-02-10',103,'Female',29,'Groceries',5,200,1000),
                                (4,'2023-02-15',104,'Male',40,'Electronics',1,20000,20000),
				(5,'2023-03-02',105,'Female',32,'Clothing',3,1500,4500),
                                (6,'2023-03-12',106,'Male',27,'Groceries',10,150,1500),
                                (7,'2023-04-01',107,'Female',45,'Electronics',2,18000,36000),
                                (8,'2023-04-10',108,'Male',38,'Clothing',4,1000,4000),
                                (9,'2023-02-07',102,'Male',34,'Clothing',2,1200,2400),
				(10,'2023-03-10',103,'Female',21,'Groceries',5,200,1000),
                                (11,'2023-04-15',104,'Male',44,'Electronics',1,20000,20000),
				(12,'2023-05-02',105,'Female',31,'Clothing',3,1500,4500),
                                (13,'2023-06-12',106,'Male',25,'Groceries',10,150,1500),
                                (14,'2023-07-01',107,'Female',42,'Electronics',2,18000,36000),
                                (15,'2023-08-10',108,'Male',31,'Clothing',4,1000,4000);
 SELECT* FROM retail_sales;                              
 
 /* Sales by product Category*/
 SELECT product_category,SUM(total_amount) AS Total_Sales FROM retail_sales GROUP BY product_category;

/* Gender-wise Sales */
SELECT gender, SUM(total_amount) AS Total_Sales FROM retail_sales GROUP BY gender;

/* Monthly Sales Trend */
SELECT MONTH(order_date) AS Month, SUM(total_amount) AS Monthly_Sales FROM retail_sales GROUP BY MONTH(order_date) ORDER BY Month;

/* Customer Purchase Details */
SELECT customer_id, SUM(total_amount) AS Total_Purchase FROM retail_sales GROUP BY customer_id ORDER BY Total_Purchase DESC;



