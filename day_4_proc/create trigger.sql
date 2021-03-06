USE SALES


IF EXISTS(SELECT * FROM DBO.SYSOBJECTS WHERE ID = OBJECT_ID(N'[DBO].[COUNTPROFIT]') AND OBJECTPROPERTY(ID, N'ISTRIGGER') = 1)
DROP TRIGGER COUNTPROFIT
GO

--批量插入触发测试
CREATE TRIGGER COUNTPROFIT 
	ON SELL
	INSTEAD OF INSERT
AS
BEGIN 
	--临时表，存放插入数据
	Create table #temp(ID int IDENTITY(1,1) PRIMARY KEY, PersonID int,Name varchar(50),Age int, AddDate datetime)
	INSERT INTO SELL
		SELECT NO,TIME,QUANTITY,PRICE,(QUANTITY*(SELECT COST 
			FROM COMMODITY C
			WHERE C.NO = I.NO)) AS PROFIT
		FROM inserted I
END;


