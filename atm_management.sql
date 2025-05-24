create database ATMmanage; 
Use ATMmanage; 
 -- Create the ATM table 
CREATE TABLE ATM ( 
  ATM_id INT PRIMARY KEY NOT NULL, 
  ATM_name VARCHAR(60), 
  ATM_branch VARCHAR(60), 
  address VARCHAR(60), 
  Bank_name VARCHAR(100) 
); 
 
-- Insert values into the ATM table 
INSERT INTO ATM (ATM_id, ATM_name, ATM_branch, address, Bank_name) 
VALUES 
(1, 'ATM-001', 'Branch A', 'Sinhgad', 'State Bank Of india'), 
(2, 'ATM-002', 'Branch B', 'vanourie', 'Central bank of india'), 
(3, 'ATM-003', 'Branch C', 'Nashik', 'Maharashtra bank'), 
(4, 'ATM-004', 'Branch D', 'Pune', 'Paytm Bank'); 
SELECT *FROM ATM; -- Create the CARD table 
CREATE TABLE CARD ( 
Card_no INT PRIMARY KEY NOT NULL, 
Card_cvv VARCHAR(30), 
Card_type VARCHAR(30), 
Card_expiry VARCHAR(30), 
Card_balance DECIMAL(10, 2), 
Card_bankname VARCHAR(30) 
); -- Insert values into the CARD table 
INSERT INTO CARD (Card_no, Card_cvv, Card_type, Card_expiry, Card_balance, 
Card_bankname) 
VALUES 
(12345678, '123', 'Visa', '12/25', 1000.00, 'State Bank Of india'), 
(98765432, '456', 'MasterCard', '06/24', 500.00, 'Central bank of india'), 
(33334444, '789', 'Visa', '09/23', 2500.00, 'Maharashtra bank'), 
(44445555, '987', 'MasterCard', '03/26', 10000.00, 'Paytm Bank'); 
SELECT *FROM CARD; -- Create the CUSTOMER table 
14 
CREATE TABLE CUSTOMER ( 
C_id INT PRIMARY KEY NOT NULL, 
First_name VARCHAR(30), 
Middle_name VARCHAR(30), 
Last_name VARCHAR(30), 
C_phone VARCHAR(30), 
C_address VARCHAR(30) 
); -- Insert values into the CUSTOMER table 
INSERT INTO CUSTOMER (C_id, First_name, Middle_name, Last_name, C_phone, C_address) 
VALUES 
(1, 'siddhesh', 'Omkar', 'rushiraj', '123-456-7890', 'Mumbai'), 
(2, 'Sarthak', 'Ritesh', 'Pranit', '987-654-3210', 'pune'), 
(3, 'Vedang', 'Sudarshan', 'Aakash', '555-123-4567', 'nashik'), 
(4, 'ayush', 'James', 'Johnson', '555-987-6543', 'Rajastan'); 
Select *FROM CUSTOMER;  -- Create the BANK table 
CREATE TABLE BANK ( 
Bank_id INT PRIMARY KEY NOT NULL, 
IFSC_code VARCHAR(30), 
Bank_name VARCHAR(30), 
Address VARCHAR(50) 
); -- Insert values into the BANK table 
INSERT INTO BANK (Bank_id, IFSC_code, Bank_name, Address) 
VALUES 
(1, 'XYZ123', 'Maharashtra bank', 'nashik'), 
15 
(2, 'ABC456', 'State Bank of India', 'mumbai'), 
(3, 'XYZ789', 'Central bank of india', 'pune'), 
(4, 'ABC123', 'Paytm bank', 'rajasthan'); 
Select *FROM BANK; -- Create the BRANCH table 
CREATE TABLE BRANCH ( 
id INT, 
FOREIGN KEY (id) REFERENCES ATM(ATM_id), 
name VARCHAR(30), 
location VARCHAR(30) 
); -- Insert values into the BRANCH table 
INSERT INTO BRANCH (id, name, location) 
VALUES 
(1, 'Branch A', 'Pune'), 
(2, 'Branch B', 'Mumbai'), 
(3, 'Branch C', 'Nashik'), 
(4, 'Branch D', 'Rajasthan'); 
SELECT *FROM BRANCH; -- Create the ACCOUNT table 
CREATE TABLE ACCOUNT ( 
Acc_no INT PRIMARY KEY NOT NULL, 
Acc_type VARCHAR(30) 
); 
16 -- Insert values into the ACCOUNT table 
INSERT INTO ACCOUNT (Acc_no, Acc_type) 
VALUES 
(123456, 'Savings'), 
(987654, 'Checking'), 
(555555, 'Savings'), 
(666666, 'Checking'); 
SELECT *FROM ACCOUNT; -- Create the TRANSACTION table 
CREATE TABLE TRANSACTION ( 
Transaction_id INT PRIMARY KEY NOT NULL, 
Transaction_type VARCHAR(30), 
Transaction_time TIMESTAMP, 
status VARCHAR(30) 
); -- Insert values into the TRANSACTION table 
INSERT INTO TRANSACTION (Transaction_id, Transaction_type, Transaction_time, status) 
VALUES 
(1, 'Withdrawal', NOW(), 'Success'), 
(2, 'Deposit', NOW(), 'Success'), 
(3, 'Transfer', NOW(), 'Pending'),
(4, 'Withdrawal', NOW(), 'Success'); 
SELECT *FROM TRANSACTION;
