USE TEST

go


CREATE FUNCTION dbo.func_date_get_name(@date_into varchar(8)) 
--CREATE FUNCTION �������ƣ�@������ �������������ͣ�
RETURNS varchar(20)   --���ط���ֵ����������
--[WITH ENCRYPTION]  --���ָ���� encryption ����������
as
BEGIN
	declare @result_name varchar(20)
	select  @result_name = Value_name from test_ceshi where statdate = @date_into   
  RETURN  @result_name
END
 
--select dbo.func_date_get_name('20180808') name;
--select * from test_ceshi;
 
--select dbo.func_date_get_name('20180808') name;
--select * from test_ceshi;


drop function dbo.book_profit

CREATE FUNCTION DBO.BOOK_PROFIT(@year int)
RETURNS @tb_book_profit TABLE(��� varchar(50), �����ܶ� int)
AS
BEGIN
INSERT  @tb_book_profit

	SELECT x.no as ���, SUM(cost*quantity) AS �����ܶ�
	FROM sell X JOIN commodity T
	ON X.no = T.no
	WHERE X.time = @year
	GROUP BY X.no

RETURN 
END	

SELECT * FROM DBO.BOOK_PROFIT(11) RESULT
GO