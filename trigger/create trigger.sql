--use test 

if exists(select * from dbo.sysobjects where id = object_id(N'[dbo].[countProfit]') and OBJECTPROPERTY(id, N'IsTrigger') = 1)
drop trigger countProfit

go



create trigger countProfit 
	on sell
	after insert
as
	begin 
	declare @recordCost float
	declare @newTime int--time
	declare @newNo int
	declare @newQuantity int
	declare @newPrice float

	select @newNo = NO,@newQuantity=quantity, @newTime =time,@newPrice=price
		from inserted

	select @recordCost=cost
	from commodity c
	where c.No=@newNo

	update sell
	set profit=@newQuantity*(@newPrice-@recordCost)
	where No=@newNo and time=@newTime
end;


