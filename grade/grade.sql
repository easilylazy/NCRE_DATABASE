use  score

delete 
from zhuo
where rank is null
--rename title
--execute sp_rename 'sheet0$','shi'
execute sp_rename 'zhuo.2018年秋季','18fall'
execute sp_rename 'zhuo.2019年春季','19spring'
execute sp_rename 'zhuo.总平均加权成绩','wam'
--execute sp_rename 'freshman.学号','s#'
execute sp_rename 'zhuo.名次','rank'
--execute sp_rename 'all.班级','class'
execute sp_rename 'zhuo.备注','class'




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