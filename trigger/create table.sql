use test
create table commodity
(
No int primary key,
name char(10) not null  unique,
cost float not null

)
create table sell
(
No int primary key,
time time not null,
quantity int not null,
profit float 
)

