# Inserting values in the customer table
USE KBMS_PROJECT;

INSERT INTO Customer
(
`Customer_name`, 
`email` , 
`phone` ,
`address` , 
`date_of_birth`, 
`age` ,
`password`,
`identity_proof`,
`preferred_login_id`)
VALUES
("Alexa","al9090@hmail.com", 9090787856, "Street 12, green tower, Jordan", 
    "1989-10-10", 32, "xxxxxxx", "visa card", "al9090@hmail.com"),
    
    ("Alexander","polo90@hmail.com", 9898990908, "Street 3, twin tower, tordan", 
    "1978-02-19", 43, "xxxxxxx", "visa card", "polo90@hmail.com"),
    
    ("Marie","al9090@hmail.com", 9898989907, "Street 3, twin tower, Jordan", 
    "2001-10-28", 21, "xxxxxxx", "visa card", "al9090@hmail.com"),
    
    ("Jacky","loki0@hmail.com", 9897856489, "Street 2,quad tower, london", 
    "1978-09-23", 44, "xxxxxxx", "visa card", "loki@hmail.com"),
    
    ("Bob","bob@hmail.com", 9898907869, "Street 3, twin tower, Jordan", 
    "2002-09-11",20, "xxxxxxx", "visa card", "bob@hmail.com"),
    
    ("Alexa","al9090@hmail.com", 9894523889, "Street 3, twin tower, Jordan", 
    "1999-11-10", 23, "xxxxxxx", "visa card", "alexa_9090"),
    
    ("Sonail","sonail@hmail.com", 9897890589, "Street 3, twin tower, Jordan", 
    "1993-12-12", 29, "xxxxxxx", "visa card", "sonail_675");