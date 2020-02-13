USE TEST

go


CREATE FUNCTION dbo.func_date_get_name(@date_into varchar(8)) 
--CREATE FUNCTION 函数名称（@参数名 参数的数据类型）
RETURNS varchar(20)   --返回返回值的数据类型
--[WITH ENCRYPTION]  --如果指定了 encryption 则函数被加密
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
RETURNS @tb_book_profit TABLE(书号 varchar(50), 销售总额 int)
AS
BEGIN
INSERT  @tb_book_profit

	SELECT x.no as 书号, SUM(cost*quantity) AS 销售总额
	FROM sell X JOIN commodity T
	ON X.no = T.no
	WHERE X.time = @year
	GROUP BY X.no

RETURN 
END	

SELECT * FROM DBO.BOOK_PROFIT(11) RESULT
GO