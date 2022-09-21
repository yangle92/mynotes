
//创建视图
CREATE VIEW v1 AS (SELECT * from employees WHERE salary >10000)
select * from v1
//删除视图
drop view v2

//修改视图
CREATE  or REPLACE VIEW v1 AS (SELECT * from employees WHERE salary >10000)

//查看视图结构
select * from v1
desc v1
show CREATE view v1


//视图语法 CREATE [ALGORITHM]={UNDEFINED| MERGE| TEMPTABLE }] VIEW 视图名[(属性清单)]
// AS SELECT 语句 [WITH [CASCADED|LOCAL] CHECK OPTION];
// MERGE 处理方式替换式，可以进行更新真实表中的数据
// TEMPTABLE 具体式，由于数据存储在临时表中，所以不可以进行数据更新操作
// UNDEFINED 没有定义ALGORITHM参数，mysql更倾向选择替换方式，因为更高效
// WITH  CHECK OPTION  更新数据时不能插入或者更新不符合试图限制条件的记录
// CASCADED|LOCAL 为可选参数，决定了检查测试的范围，默认为CASCADED


CREATE ALGORITHM=UNDEFINED 
DEFINER=`root`@`%` 
SQL SECURITY DEFINER VIEW `v1` 
AS 
(select `employees`.`employee_id` AS `employee_id`,
`employees`.`first_name` AS `first_name`,
`employees`.`last_name` AS `last_name`,`employees`.`email` AS `email`,
`employees`.`phone_number` AS `phone_number`,`employees`.`job_id` AS `job_id`,
`employees`.`salary` AS `salary`,
`employees`.`commission_pct` AS `commission_pct`,
`employees`.`manager_id` AS `manager_id`,
`employees`.`department_id` AS `department_id`,
`employees`.`hiredate` AS `hiredate` 
from `employees` 
where (`employees`.`salary` > 10000))