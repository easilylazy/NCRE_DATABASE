use  score

delete 
from zhuo
where rank is null
--rename title
--execute sp_rename 'sheet0$','shi'
execute sp_rename 'zhuo.2018���＾','18fall'
execute sp_rename 'zhuo.2019�괺��','19spring'
execute sp_rename 'zhuo.��ƽ����Ȩ�ɼ�','wam'
--execute sp_rename 'freshman.ѧ��','s#'
execute sp_rename 'zhuo.����','rank'
--execute sp_rename 'all.�༶','class'
execute sp_rename 'zhuo.��ע','class'




--process
select 'wam'=AVG(wam)
from zhuo




select 'from auto'=Avg(rank)--wam)
from shi , freshman 
where shi.s# = freshman.s#

select 'from out'=Avg(rank)--wam)
--select  *--'from origin'=Avg(wam)
from shi as s--,freshman as f
where s.s# not in 
(select s#
from freshman)

select 'from origin'=Avg(rank)--wam)
from shi as s, freshman as f
where s.s# = f.s# and s.class=f.class
--f.s# --or f.s# is null
except--intersect
select *
--from shi
--where shi.s#='U201814168'
from shi as s, freshman as f
where s.s# = f.s# and s.class=f.class

--clear space
--update shi
--set s#=REPLACE(s#,'  ','')



--print result
select *
from shi
where s# ='U201814168'
select *
from freshman
where s#='U201814168'