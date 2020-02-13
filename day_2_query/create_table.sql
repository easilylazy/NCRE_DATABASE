IF NOT EXISTS (SELECT name FROM SYS.DATABASES WHERE name = 'LIBRARY')
CREATE DATABASE LIBRARY
GO

USE LIBRARY


IF EXISTS (SELECT name FROM sysobjects WHERE name = 'LOANS')
DROP TABLE LOANS

IF EXISTS (SELECT name FROM sysobjects WHERE name = 'BORROWER')
DROP TABLE BORROWER

IF EXISTS (SELECT name FROM sysobjects WHERE name = 'BOOKS')
DROP TABLE BOOKS

CREATE TABLE BORROWER
(
	����֤�� varchar(10) PRIMARY KEY,
	���� varchar(10),
	ϵ�� varchar(10),
	�༶ varchar(5)
)
GO




CREATE TABLE BOOKS
(
	����� varchar(10),
	���� varchar(10),
	���� varchar(10),
	ͼ��ǼǺ� varchar(10)  PRIMARY KEY,
	������ varchar(10),
	�۸� float
)
GO


CREATE TABLE LOANS
(
	����֤�� varchar(10) FOREIGN KEY REFERENCES BORROWER(����֤��),
	ͼ��ݵǼǺ� varchar(10) FOREIGN KEY REFERENCES BOOKS(ͼ��ǼǺ�),
	�������� date,
)
GO

