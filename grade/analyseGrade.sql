use score
drop view shigrade

DROP VIEW sumGrade

create view sumGrade
as
(
select ����, [18fall],[19spring],[19fall],wam,credit,TIPS
from shiScore s,shiSC sc
where s.s#=sc.s#

UNION

select ����, [18fall],[19spring],[19fall],wam,credit,TIPS
from zhuoScore s,zhuoSC sc
where s.s#=sc.s#

UNION

select ����, [18fall],[19spring],[19fall],wam,credit,TIPS
from autoScore s,autoSC sc
where s.s#=sc.s#

UNION

select ���� , [18fall],[19spring],[19fall],wam,credit,TIPS
from jiaoScore s,autoSC sc
where s.s#=sc.s#

)


--CREATE VIEW CLASSGRADE
--AS
--GROUP BY TIPS


GO
CREATE PROC RANK AS
BEGIN
SELECT *
FROM sumGrade
ORDER BY WAM DESC
END

RANK
GO


DROP FUNCTION FINDINFO
CREATE FUNCTION dbo.findInfo(@��ѯ���� varchar(10))
returns float
AS 
begin
	declare @score float
	select @score=wam from sumGrade
		where ����=@��ѯ����
	return @score

end

declare @test varchar(10)
	
select dbo.findInfo('������') test



select *
from CLASSGRADE

ORDER BY [avgWAM] DESC
ORDER BY [CREDIT] desc--wam desc






select*
from shigrade
order by [19fall] desc

select*
from shiscore
order by rank)

select ����, [18fall],[19spring],wam
from zhuo s ,zhuoSC sc
where s.s#=sc.s#
order by rank

select *--s#
from zhuoSC

union

select *
from shiSC

select s#
from zhuosc

--execute sp_rename 'ʵ���$','shiSC'
execute sp_rename 'autosc.name','����'
--execute sp_rename '׿Խ��$','zhuoSC'

update jiaoscore
set s#=REPLACE(s#,'  ','')

select *
from jiaoscore


select *
from autoSc


select ����, [18fall],[19spring],[19fall],wam,credit
from jiaoScore s,autoSC sc
where s.s#=sc.s#
ORDER BY WAM DESC