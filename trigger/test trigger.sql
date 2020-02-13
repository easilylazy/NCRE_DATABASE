use test
--test







ALTER TABLE SELL
Add   time INT null
--drop  column time



--delete 
--from sell



insert into sell
values
	(1,2, null ,3,DATEPART(dd,GETDATE())),
	(1,5, null ,3,DATEPART(dd,GETDATE())),
	(1,7, null ,3,DATEPART(dd,GETDATE()))

