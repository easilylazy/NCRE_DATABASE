IF NOT EXISTS (SELECT name FROM SYS.DATABASES WHERE name = '教学' )
CREATE DATABASE 教学
GO

USE 教学


IF NOT EXISTS (SELECT NAME FROM sysobjects WHERE NAME = '教师表')
CREATE TABLE 教师表
(
	教师号 int PRIMARY KEY,
	姓名 varchar(10),
	所在部门号 varchar(4),
	职称 varchar(10)
)
GO
IF NOT EXISTS (SELECT NAME FROM sysobjects WHERE NAME = '部门表')
CREATE TABLE 部门表
(
	部门号 varchar(4) PRIMARY KEY,
	部门名 varchar(10),
	高级职称人数 int
)
GO

--IF NOT EXISTS (SELECT NAME FROM sysobjects WHERE NAME = 'tri_zc')
CREATE TRIGGER tri_zc2 ON 教师表
AFTER INSERT, UPDATE
AS
BEGIN
DECLARE @zc varchar(10)
DECLARE @dept varchar(4)
SELECT @zc = 职称, @dept = 所在部门号 
FROM inserted

UPDATE 部门表
SET 高级职称人数 = 高级职称人数 + 1
WHERE @zc = '教授' OR  @zc = '副教授'
	AND @dept= 部门号
END
GO
