use score 

--alter table cet6
--alter column name nvarchar(255) not null
--alter table cet6
--add constraint ID
--primary key(name)
execute sp_rename  'cet4.学号' ,'s#'
execute sp_rename  'cet4.姓名' ,'name'
execute sp_rename  'cet4.学号' ,'s#'
execute sp_rename  'cet4.成绩' ,'grade'



delete from cet4
where name is null
select *
from cet4


select *
from cet4 c4,cet6 c6
where
c4.name=c6.name


alter table cet6
add column
ALTER TABLE cet6
drop column F6,F7

INSERT INTO CET4
VALUES ('李子怡','U201814168',628)

select*
from cet4

alter table cet6
alter column grade int

create database prize

use prize

create table mathModel


execute sp_rename 'Sheet$', 'mathModel'


select *
from mathModel
WHERE 获奖情况='三等奖'

alter table mathModel
drop COLUMN F6,F7