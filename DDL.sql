/*  
	Author Mahesh Jadhav
    Database Creation
*/

# Creating customer table with cusomer_id as primary key
CREATE DATABASE KBMS_PROJECT;
USE KBMS_PROJECT;

CREATE TABLE Customer(
customer_id INT AUTO_INCREMENT,
Customer_name varchar(50), 
email VARCHAR(50), 
phone BIGINT,
address TEXT, 
date_of_birth DATE, 
age TINYINT,
password varchar(15),
identity_proof varchar(25),
preferred_login_id varchar(50),

constraint primary key (customer_id)
);

DESC Customer;

