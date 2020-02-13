USE LIBRARY


----test
--SELECT L.借书证号,min(姓名), COUNT(*) AS 借书数量
--FROM BORROWER B JOIN LOANS L
--ON B.借书证号 = L.借书证号
--GROUP BY L.借书证号, B.借书证号
BEGIN
SELECT L.借书证号,min(姓名), min(系名), COUNT(*) AS 借书数量
FROM BORROWER B ,LOANS L
WHERE B.借书证号 = L.借书证号
GROUP BY L.借书证号
HAVING  COUNT(*) >=5
END
GO









BEGIN
DECLARE @WangLiID varchar(8) --王丽同学借书证号
SET @WangLiID = '12011107'

SELECT 姓名, 系名, 书名, 借书日期
FROM BORROWER, LOANS, BOOKS
WHERE BORROWER.借书证号 = LOANS.借书证号
	AND LOANS.图书馆登记号 = BOOKS.图书登记号
	AND LOANS.图书馆登记号 IN
			 (SELECT 图书馆登记号
			  FROM LOANS
			  WHERE 借书证号 = @WangLiID)
	AND BORROWER.借书证号 != @WangLiID

SELECT * 
FROM LOANS L, BOOKS B
WHERE L.图书馆登记号 = B.图书登记号
	AND L.借书证号 = @WangLiID

END
GO

BEGIN
DECLARE @WangLiID varchar(8) --王丽同学借书证号
SET @WangLiID = '12011107'


SELECT * 
FROM LOANS L, BOOKS B
WHERE L.图书馆登记号 = B.图书登记号
	AND L.借书证号 = @WangLiID

END
GO
