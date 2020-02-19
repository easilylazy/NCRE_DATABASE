use SALES

delete 
from sell


--alter table sell 
----drop column time2
--add time datetime




--insert into sell
--values
--	(1,2, null ,3,DATEPART(yy,GETDATE()),GETDATE()),
--	(1,5, null ,3,DATEPART(yy,GETDATE())),
--	(1,7, null ,3,DATEPART(yy,GETDATE()))

INSERT INTO SELL
VALUES
	--商品号，日期，数量，价格，获利（由触发器计算）
	(1,GETDATE(),2,3, null ),
	(2,GETDATE(),2,1, null ),
	(1,GETDATE(),2,3, null ),
	(3,GETDATE(),2,1, null )
	

