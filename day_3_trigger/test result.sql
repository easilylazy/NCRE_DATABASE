USE 教学
--SELECT NAME FROM SYSOBJECTS
DELETE FROM
部门表
DELETE FROM
教师表

INSERT INTO 部门表
VALUES 
	( 'd01','自动化学院',0),
	( 'd02','外国语学院',0),
	( 'd03','电信学院',0)

INSERT INTO 教师表
VALUES 
	--( '001','张三','d01','教授'),
	--( '002','李四','d01','副教授'),
	--( '003','王五','d02','讲师'),
	( '004','赵六','d03','教授')


SELECT *
FROM 教师表

SELECT *
FROM 部门表