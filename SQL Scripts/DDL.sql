create database KBMS;
drop database KBMS;
use KBMS;
drop table PRODUCT;
CREATE TABLE PRODUCT
(
	PRODUCT_ID INT  PRIMARY KEY ,
   PRODUCT_NAME TEXT NOT NULL,
   PRODUCT_COUNT VARCHAR(20),
   TOTAL_STOCK VARCHAR(20) NOT NULL,
   BEST_BEFORE VARCHAR(20),
   PRICE_PER_UNIT VARCHAR(20) NOT NULL
) ;
Select *from PRODUCT;

CREATE TABLE Customer(
Customer_name varchar(50), 
email VARCHAR(50), 
phone VARCHAR(20),
address TEXT, 
date_of_birth varchar(30), 
age INT,
password varchar(15),
identity_proof varchar(25),
preferred_login_id varchar(50)
);

create table AdminDetails(
preferred_login_id varchar(20),
password varchar(20)
);

select *from AdminDetails;
