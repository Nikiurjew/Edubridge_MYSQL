show databases;
+--------------------+
| Database           |
+--------------------+
| college            |
| edu10534           |
| information_schema |
| mysql              |
| performance_schema |
| student_manage     |
| sys                |
+--------------------+
7 rows in set (0.00 sec)

use edu10534;

desc employee;
+---------+-------------+------+-----+---------+-------+
| Field   | Type        | Null | Key | Default | Extra |
+---------+-------------+------+-----+---------+-------+
| name    | varchar(50) | YES  |     | NULL    |       |
| salary  | float       | YES  |     | NULL    |       |
| gender  | varchar(6)  | YES  |     | NULL    |       |
| doj     | date        | YES  |     | NULL    |       |
| id      | int         | YES  |     | NULL    |       |
| address | varchar(50) | YES  |     | NULL    |       |
+---------+-------------+------+-----+---------+-------+
6 rows in set (0.00 sec)

select * from employee;
+--------+--------+--------+------------+------+-----------+
| name   | salary | gender | doj        | id   | address   |
+--------+--------+--------+------------+------+-----------+
| Nikita | 200000 | F      | 2023-11-01 |    1 | assam     |
| Muskan | 400000 | F      | 2023-07-23 |    2 | bengalore |
| Tejas  | 400000 | M      | 2023-11-11 |    3 | karnataka |
| bob    | 400000 | M      | 2023-11-11 |    4 | karnataka |
| nita   | 400000 | M      | 2023-11-11 | NULL | NULL      |
| pari   | 400000 | M      | 2023-11-22 | NULL | NULL      |
| rahul  | 400000 | M      | 2023-11-20 | NULL | Assam     |
| meghna | 400000 | F      | 2023-11-03 | NULL | NULL      |
| Hadwt  | 400000 | M      | 2023-10-03 | NULL | NULL      |
| Neha   | 400000 | F      | 2023-09-03 | NULL | NULL      |
| Neha   | 400000 | F      | 2023-09-03 | NULL | NULL      |
| Hadwt  | 400000 | M      | 2023-10-03 | NULL | NULL      |
| deepa  |   NULL | NULL   | NULL       | NULL | ooty      |
| NULL   |   NULL | NULL   | NULL       |  101 | NULL      |
| NULL   |   NULL | NULL   | NULL       |  102 | NULL      |
+--------+--------+--------+------------+------+-----------+
15 rows in set (0.00 sec)

select name,id from employee order by salary;
+--------+------+
| name   | id   |
+--------+------+
| deepa  | NULL |
| NULL   |  101 |
| NULL   |  102 |
| Nikita |    1 |
| Muskan |    2 |
| Tejas  |    3 |
| bob    |    4 |
| nita   | NULL |
| pari   | NULL |
| rahul  | NULL |
| meghna | NULL |
| Hadwt  | NULL |
| Neha   | NULL |
| Neha   | NULL |
| Hadwt  | NULL |
+--------+------+
15 rows in set (0.00 sec)

select name,id from employee order by salary desc;
+--------+------+
| name   | id   |
+--------+------+
| Muskan |    2 |
| Tejas  |    3 |
| bob    |    4 |
| nita   | NULL |
| pari   | NULL |
| rahul  | NULL |
| meghna | NULL |
| Hadwt  | NULL |
| Neha   | NULL |
| Neha   | NULL |
| Hadwt  | NULL |
| Nikita |    1 |
| deepa  | NULL |
| NULL   |  101 |
| NULL   |  102 |
+--------+------+
15 rows in set (0.00 sec)

create table employe(id int,name varchar(30),salary int,gender varchar(30));

insert into employe values(101,'bob',7000,"m");

drop table employe;

create table students(id int, name varchar(20),fee float, gender varchar(30));


insert into students values(1,'nikita',1000,'f'),(2,'muskan',2000,'f'),(3,'tejas',3000,'M'),(4,'Hadwt',2000,'M');

select gender,sum(fee) from students group by gender;
+--------+----------+
| gender | sum(fee) |
+--------+----------+
| f      |     3000 |
| M      |     5000 |
+--------+----------+
2 rows in set (0.00 sec)

select gender,avg(fee) from students group by gender;
+--------+----------+
| gender | avg(fee) |
+--------+----------+
| f      |     1500 |
| M      |     2500 |
+--------+----------+
2 rows in set (0.00 sec)

select gender,avg(fee) from students group by gender;
+--------+----------+
| gender | avg(fee) |
+--------+----------+
| f      |     1500 |
| M      |     2500 |
+--------+----------+
2 rows in set (0.00 sec)

select * from students;
+------+--------+------+--------+
| id   | name   | fee  | gender |
+------+--------+------+--------+
|    1 | nikita | 1000 | f      |
|    2 | muskan | 2000 | f      |
|    3 | tejas  | 3000 | M      |
|    4 | Hadwt  | 2000 | M      |
+------+--------+------+--------+
4 rows in set (0.00 sec)

select gender,min(fee) from students group by gender;
+--------+----------+
| gender | min(fee) |
+--------+----------+
| f      |     1000 |
| M      |     2000 |
+--------+----------+
2 rows in set (0.00 sec)

select gender,max(fee) from students group by gender;
+--------+----------+
| gender | max(fee) |
+--------+----------+
| f      |     2000 |
| M      |     3000 |
+--------+----------+
2 rows in set (0.00 sec)

select id,max(fee) from students group by id;
+------+----------+
| id   | max(fee) |
+------+----------+
|    1 |     1000 |
|    2 |     2000 |
|    3 |     3000 |
|    4 |     2000 |
+------+----------+
4 rows in set (0.00 sec)

select gender,name,sum(fee) from students group by gender,name;
+--------+--------+----------+
| gender | name   | sum(fee) |
+--------+--------+----------+
| f      | nikita |     1000 |
| f      | muskan |     2000 |
| M      | tejas  |     3000 |
| M      | Hadwt  |     2000 |
+--------+--------+----------+
4 rows in set (0.00 sec)

select name,gender,id,fee from students order by fee desc;
+--------+--------+------+------+
| name   | gender | id   | fee  |
+--------+--------+------+------+
| tejas  | M      |    3 | 3000 |
| muskan | f      |    2 | 2000 |
| Hadwt  | M      |    4 | 2000 |
| nikita | f      |    1 | 1000 |
+--------+--------+------+------+
4 rows in set (0.00 sec)

select name,gender,id,fee from students order by fee;
+--------+--------+------+------+
| name   | gender | id   | fee  |
+--------+--------+------+------+
| nikita | f      |    1 | 1000 |
| muskan | f      |    2 | 2000 |
| Hadwt  | M      |    4 | 2000 |
| tejas  | M      |    3 | 3000 |
+--------+--------+------+------+
4 rows in set (0.00 sec)

select name,gender,id,fee from students order by gender;
+--------+--------+------+------+
| name   | gender | id   | fee  |
+--------+--------+------+------+
| nikita | f      |    1 | 1000 |
| muskan | f      |    2 | 2000 |
| tejas  | M      |    3 | 3000 |
| Hadwt  | M      |    4 | 2000 |
+--------+--------+------+------+
4 rows in set (0.00 sec)

select now();
+---------------------+
| now()               |
+---------------------+
| 2023-12-07 16:08:31 |
+---------------------+
1 row in set (0.00 sec)

select (10+20);
+---------+
| (10+20) |
+---------+
|      30 |
+---------+
1 row in set (0.00 sec)

select (10+20) as addition;
+----------+
| addition |
+----------+
|       30 |
+----------+
1 row in set (0.00 sec)

select (20-10) as substraction;
+--------------+
| substraction |
+--------------+
|           10 |
+--------------+
1 row in set (0.00 sec)

select upper('india') as name;
+-------+
| name  |
+-------+
| INDIA |
+-------+
1 row in set (0.00 sec)

select lcase('NIKITA') as name;
+--------+
| name   |
+--------+
| nikita |
+--------+
1 row in set (0.00 sec)

select day(curdate());
+----------------+
| day(curdate()) |
+----------------+
|              7 |
+----------------+
1 row in set (0.00 sec)

select length('india') as countofchar;
+-------------+
| countofchar |
+-------------+
|           5 |
+-------------+