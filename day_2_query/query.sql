USE LIBRARY


----test
--SELECT L.����֤��,min(����), COUNT(*) AS ��������
--FROM BORROWER B JOIN LOANS L
--ON B.����֤�� = L.����֤��
--GROUP BY L.����֤��, B.����֤��
BEGIN
SELECT L.����֤��,min(����), min(ϵ��), COUNT(*) AS ��������
FROM BORROWER B ,LOANS L
WHERE B.����֤�� = L.����֤��
GROUP BY L.����֤��
HAVING  COUNT(*) >=5
END
GO









BEGIN
DECLARE @WangLiID varchar(8) --����ͬѧ����֤��
SET @WangLiID = '12011107'

SELECT ����, ϵ��, ����, ��������
FROM BORROWER, LOANS, BOOKS
WHERE BORROWER.����֤�� = LOANS.����֤��
	AND LOANS.ͼ��ݵǼǺ� = BOOKS.ͼ��ǼǺ�
	AND LOANS.ͼ��ݵǼǺ� IN
			 (SELECT ͼ��ݵǼǺ�
			  FROM LOANS
			  WHERE ����֤�� = @WangLiID)
	AND BORROWER.����֤�� != @WangLiID

SELECT * 
FROM LOANS L, BOOKS B
WHERE L.ͼ��ݵǼǺ� = B.ͼ��ǼǺ�
	AND L.����֤�� = @WangLiID

END
GO

BEGIN
DECLARE @WangLiID varchar(8) --����ͬѧ����֤��
SET @WangLiID = '12011107'


SELECT * 
FROM LOANS L, BOOKS B
WHERE L.ͼ��ݵǼǺ� = B.ͼ��ǼǺ�
	AND L.����֤�� = @WangLiID

END
GO
