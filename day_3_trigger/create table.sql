IF NOT EXISTS (SELECT name FROM SYS.DATABASES WHERE name = '��ѧ' )
CREATE DATABASE ��ѧ
GO

USE ��ѧ


IF NOT EXISTS (SELECT NAME FROM sysobjects WHERE NAME = '��ʦ��')
CREATE TABLE ��ʦ��
(
	��ʦ�� int PRIMARY KEY,
	���� varchar(10),
	���ڲ��ź� varchar(4),
	ְ�� varchar(10)
)
GO
IF NOT EXISTS (SELECT NAME FROM sysobjects WHERE NAME = '���ű�')
CREATE TABLE ���ű�
(
	���ź� varchar(4) PRIMARY KEY,
	������ varchar(10),
	�߼�ְ������ int
)
GO

--IF NOT EXISTS (SELECT NAME FROM sysobjects WHERE NAME = 'tri_zc')
CREATE TRIGGER tri_zc2 ON ��ʦ��
AFTER INSERT, UPDATE
AS
BEGIN
DECLARE @zc varchar(10)
DECLARE @dept varchar(4)
SELECT @zc = ְ��, @dept = ���ڲ��ź� 
FROM inserted

UPDATE ���ű�
SET �߼�ְ������ = �߼�ְ������ + 1
WHERE @zc = '����' OR  @zc = '������'
	AND @dept= ���ź�
END
GO
