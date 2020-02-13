use AdventureWorksDW
select *
from DimProduct

where EndDate is not null

:setvar DatabaseName "douban"


SELECT *
FROM [model].[sys].[databases]

IF EXISTS (SELECT [name] FROM [master].[sys].[databases] WHERE [name] = N'$(DatabaseName)')
    DROP DATABASE $(DatabaseName);

-- ****************************************
-- Create Database
-- ****************************************
PRINT '';
PRINT '*** Creating Database';
GO

CREATE DATABASE $(DatabaseName);
GO


PRINT '';
PRINT '*** Checking for $(DatabaseName) Database';
/* CHECK FOR DATABASE IF IT DOESN'T EXISTS, DO NOT RUN THE REST OF THE SCRIPT */
IF NOT EXISTS (SELECT TOP 1 1 FROM sys.databases WHERE name = N'$(DatabaseName)')
BEGIN
PRINT '*******************************************************************************************************************************************************************'
+char(10)+'********$(DatabaseName) Database does not exist.  Make sure that the script is being run in SQLCMD mode and that the variables have been correctly set.*********'
+char(10)+'*******************************************************************************************************************************************************************';
SET NOEXEC ON;
END
GO




use douban


create table [dbo].[test](
	[name] [sysname]not null,
	[version][int]null
	)on [primary]

	go



insert into  test
values ('s',2.34)

update test
set version=5
where version >2

select *
from test





CREATE TABLE [dbo].[sysdiagrams](
	[name] [sysname] NOT NULL,
	[principal_id] [int] NOT NULL,
	[diagram_id] [int] IDENTITY(1,1) NOT NULL,
	[version] [int] NULL,
	[definition] [varbinary](max) NULL
	) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO


drop table book

use douban

CREATE TABLE [dbo].[book](
	[ItemNo] [int] IDENTITY(1,1) NOT NULL,--序号
	[name] [nchar](30) NOT NULL,
	[url] [nvarchar](100) NOT NULL,
	[author][nvarchar](50)  null,
	[publisher][nchar](15) null,
	[date][NCHAR](10) NULL,
	[PRICE][NCHAR](10)NULL,
	[RATE][NCHAR](10)NULL,
	[comment][nvarchar](100)null

) ON [PRIMARY];
GO


alter table book
drop column itemNo

insert into book(name,date,author,rate)
values ('player','www','time','7.9')
insert into book
values('解忧杂货店铺子','https://book.douban.com/subject/1770782/','[美] 卡勒德·胡赛尼' , '上海人民出版社' , '2006-5 ', '29.00元','8.9','为你，千千万万遍')

select *
from book
where len(publisher)>10


select *
from book
where comment like '空'


alter table book
alter column publisher nchar(20)

delete from book
where
itemno=1

:setvar SqlSamplesSourceDataPath "C:\Users\cascara\Desktop\seedcup\csv\"


PRINT 'Loading [dbo].[book]';

BULK INSERT [dbo].[book] FROM '$(SqlSamplesSourceDataPath)newbook.csv'
WITH (
    CHECK_CONSTRAINTS,
    --CODEPAGE='ACP',
    DATAFILETYPE = 'widechar',
    FIELDTERMINATOR= ',',
	--FIRSTROW =6,
	--lastrow=7,
    ROWTERMINATOR = '\n',
    KEEPIDENTITY,
    TABLOCK
);












alter table book
add  rank int identity(1,1) not null


:setvar SqlSamplesSourceDataPath "C:\Users\cascara\Desktop\seedcup\csv\"

BULK INSERT [dbo].[test] FROM '$(SqlSamplesSourceDataPath)test_16be.csv'
WITH (
    CHECK_CONSTRAINTS,
   -- CODEPAGE='ACP',
    --DATAFILETYPE = 'widenative',
    FIELDTERMINATOR= ',',
	FIRSTROW =2,
    ROWTERMINATOR = '\n',
   --KEEPIDENTITY,
    TABLOCK,

	keepnulls
);



--delete from test
--where name like'''%'
select*
from test

where name='刘'


















ALTER TABLE [dbo].[DimCurrency] WITH CHECK ADD 
    CONSTRAINT [PK_DimCurrency_CurrencyKey] PRIMARY KEY CLUSTERED 
    (
       [CurrencyKey]
    )  ON [PRIMARY];
GO