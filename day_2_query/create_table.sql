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
	借书证号 varchar(10) PRIMARY KEY,
	姓名 varchar(10),
	系名 varchar(10),
	班级 varchar(5)
)
GO




CREATE TABLE BOOKS
(
	索书号 varchar(10),
	书名 varchar(10),
	作者 varchar(10),
	图书登记号 varchar(10)  PRIMARY KEY,
	出版社 varchar(10),
	价格 float
)
GO


CREATE TABLE LOANS
(
	借书证号 varchar(10) FOREIGN KEY REFERENCES BORROWER(借书证号),
	图书馆登记号 varchar(10) FOREIGN KEY REFERENCES BOOKS(图书登记号),
	借书日期 date,
)
GO

