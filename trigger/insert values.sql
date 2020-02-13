use test 

delete 
from commodity


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



insert into commodity
values 
	(1,'冰红茶', 1.5),
	(2,'方便面',0.5),
	(3,'矿泉水',0.8)

