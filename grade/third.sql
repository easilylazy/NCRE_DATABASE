use score
select *
from third

deLete from third
where course is null and mark is null and weight is null
execute sp_rename 'third.���пƼ���ѧѧ������ѧ�ڳɼ���','course'
execute sp_rename 'third.F2','mark'
execute sp_rename 'third.F3','weight'

select '��Ȩ'=((mark*weight)/SUM(weight))
from third
where mark=97

use score

grant all privileges on 'testdb'.* to 'test'@'%' identified by '123456'; 
--ˢ��Ȩ��
flush privileges;

use score
grant select on third to sa with grant option

alter login sa with name =new;
alter login new with password ='521W@n'
go

