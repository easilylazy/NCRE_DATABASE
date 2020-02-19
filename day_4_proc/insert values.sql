USE SALES

DELETE 
FROM COMMODITY


--修改属性
--ALTER TABLE COMMODITY
--DROP CONSTRAINT UQ__commodit__72E12F1B83FC7D3D

--alter table commodity 
--alter column name varchar(10) 


--ALTER TABLE COMMODITY 
--ADD CONSTRAINT UQ_NAME UNIQUE(NAME)

--插入属性
--alter table sell
--add  price float



INSERT INTO COMMODITY
VALUES 
	(1,'冰红茶','饮料', 1.5),
	(2,'方便面','食品',0.5),
	(3,'矿泉水','饮料',0.8)

