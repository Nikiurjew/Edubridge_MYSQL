use edu10534;

create table employee(id int primary key, name varchar(50) , salary float,gender varchar(6),doj date);

drop table employee;

create table employee(id int primary key, name varchar(50) , salary float,gender varchar(6),doj date);

insert into employee values(1,"Nikita",400000,"");
insert into employee values(1,"Nikita",400000,"F",01-11-2023);
insert into employee values(1,"Nikita",400000,"F",2023-11-01);
insert into employee values(1,"Nikita",400000,"F",11-2023-01);
insert into employee values(1,"Nikita",400000,"F","2023-11-01");
insert into employee values(2,"Muskan",400000,"F","2023-07-23");
insert into employee values(3,"Tejas",400000,"M","2023-11-11");
insert into employee values(4,"bob",400000,"M","2023-11-11");
insert into employee values(5,"nita",400000,"M","2023-11-11");
insert into employee values(6,"pari",400000,"M","2023-11-22");
insert into employee values(7,"rahul",400000,"M","2023-11-20");
insert into employee values(8,"meghna",400000,"F","2023-11-03");
insert into employee values(9,"Hadwt",400000,"M","2023-10-03");
insert into employee values(10,"Neha",400000,"F","2023-09-03");

select * from employee;
+----+--------+--------+--------+------------+
| id | name   | salary | gender | doj        |
+----+--------+--------+--------+------------+
|  1 | Nikita | 400000 | F      | 2023-11-01 |
|  2 | Muskan | 400000 | F      | 2023-07-23 |
|  3 | Tejas  | 400000 | M      | 2023-11-11 |
|  4 | bob    | 400000 | M      | 2023-11-11 |
|  5 | nita   | 400000 | M      | 2023-11-11 |
|  6 | pari   | 400000 | M      | 2023-11-22 |
|  7 | rahul  | 400000 | M      | 2023-11-20 |
|  8 | meghna | 400000 | F      | 2023-11-03 |
|  9 | Hadwt  | 400000 | M      | 2023-10-03 |
| 10 | Neha   | 400000 | F      | 2023-09-03 |
+----+--------+--------+--------+------------+


alter table enployee drop primary key;
alter table employee drop primary key;

select * from employee;
+----+--------+--------+--------+------------+
| id | name   | salary | gender | doj        |
+----+--------+--------+--------+------------+
|  1 | Nikita | 400000 | F      | 2023-11-01 |
|  2 | Muskan | 400000 | F      | 2023-07-23 |
|  3 | Tejas  | 400000 | M      | 2023-11-11 |
|  4 | bob    | 400000 | M      | 2023-11-11 |
|  5 | nita   | 400000 | M      | 2023-11-11 |
|  6 | pari   | 400000 | M      | 2023-11-22 |
|  7 | rahul  | 400000 | M      | 2023-11-20 |
|  8 | meghna | 400000 | F      | 2023-11-03 |
|  9 | Hadwt  | 400000 | M      | 2023-10-03 |
| 10 | Neha   | 400000 | F      | 2023-09-03 |
+----+--------+--------+--------+------------+


insert into employee values(10,"Neha",400000,"F","2023-09-03");

insert into employee values(9,"Hadwt",400000,"M","2023-10-03");


select distinct id,name,salary from employee;
+----+--------+--------+
| id | name   | salary |
+----+--------+--------+
|  1 | Nikita | 400000 |
|  2 | Muskan | 400000 |
|  3 | Tejas  | 400000 |
|  4 | bob    | 400000 |
|  5 | nita   | 400000 |
|  6 | pari   | 400000 |
|  7 | rahul  | 400000 |
|  8 | meghna | 400000 |
|  9 | Hadwt  | 400000 |
| 10 | Neha   | 400000 |
+----+--------+--------+

select count(*) from employee;
+----------+
| count(*) |
+----------+
|       12 |
+----------+
select count(*) as number_of_employee from employee;
+--------------------+
| number_of_employee |
+--------------------+
|                 12 |
+--------------------+
insert into employee(id,name) values(101,"deepa");

 select count(name) as number_as_employee from employee;
+--------------------+
| number_as_employee |
+--------------------+
|                 13 |
+--------------------+


select count(salary) as number_as_employee from employee;
+--------------------+
| number_as_employee |
+--------------------+
|                 12 |
+--------------------+


select count(gender,doj) as number_as_employee from employee;
select count(gender) as number_as_employee from employee;
+--------------------+
| number_as_employee |
+--------------------+
|                 12 |
+--------------------+

insert into employee(salary,doj) values(200000,"2023-11-16");
insert into employee(salary,doj) values(200000,"2023-11-16");

desc employee;
+--------+-------------+------+-----+---------+-------+
| Field  | Type        | Null | Key | Default | Extra |
+--------+-------------+------+-----+---------+-------+
| id     | int         | NO   |     | NULL    |       |
| name   | varchar(50) | YES  |     | NULL    |       |
| salary | float       | YES  |     | NULL    |       |
| gender | varchar(6)  | YES  |     | NULL    |       |
| doj    | date        | YES  |     | NULL    |       |
+--------+-------------+------+-----+---------+-------+


alter table employee drop primary key;
alter table employee drop id;
alter table employee add id int;

desc employee;
+--------+-------------+------+-----+---------+-------+
| Field  | Type        | Null | Key | Default | Extra |
+--------+-------------+------+-----+---------+-------+
| name   | varchar(50) | YES  |     | NULL    |       |
| salary | float       | YES  |     | NULL    |       |
| gender | varchar(6)  | YES  |     | NULL    |       |
| doj    | date        | YES  |     | NULL    |       |
| id     | int         | YES  |     | NULL    |       |
+--------+-------------+------+-----+---------+-------+
insert into employee(id) values(101);
insert into employee(id) values(102);

select * from employee;
+--------+--------+--------+------------+------+
| name   | salary | gender | doj        | id   |
+--------+--------+--------+------------+------+
| Nikita | 400000 | F      | 2023-11-01 | NULL |
| Muskan | 400000 | F      | 2023-07-23 | NULL |
| Tejas  | 400000 | M      | 2023-11-11 | NULL |
| bob    | 400000 | M      | 2023-11-11 | NULL |
| nita   | 400000 | M      | 2023-11-11 | NULL |
| pari   | 400000 | M      | 2023-11-22 | NULL |
| rahul  | 400000 | M      | 2023-11-20 | NULL |
| meghna | 400000 | F      | 2023-11-03 | NULL |
| Hadwt  | 400000 | M      | 2023-10-03 | NULL |
| Neha   | 400000 | F      | 2023-09-03 | NULL |
| Neha   | 400000 | F      | 2023-09-03 | NULL |
| Hadwt  | 400000 | M      | 2023-10-03 | NULL |
| deepa  |   NULL | NULL   | NULL       | NULL |
| NULL   |   NULL | NULL   | NULL       |  101 |
| NULL   |   NULL | NULL   | NULL       |  102 |
+--------+--------+--------+------------+------+
15 rows in set (0.00 sec)

select sum(salary) from employee;
+-------------+
| sum(salary) |
+-------------+
|     4800000 |
+-------------+
1 row in set (0.00 sec)

select avg(*) from employee;
select avg(salary) from employee;
+-------------+
| avg(salary) |
+-------------+
|      400000 |
+-------------+
1 row in set (0.00 sec)

select min(salary) from employee;
+-------------+
| min(salary) |
+-------------+
|      400000 |
+-------------+
1 row in set (0.00 sec)

select max(salary) from employee;
+-------------+
| max(salary) |
+-------------+
|      400000 |
+-------------+
1 row in set (0.00 sec)

select * from employee;
+--------+--------+--------+------------+------+
| name   | salary | gender | doj        | id   |
+--------+--------+--------+------------+------+
| Nikita | 400000 | F      | 2023-11-01 | NULL |
| Muskan | 400000 | F      | 2023-07-23 | NULL |
| Tejas  | 400000 | M      | 2023-11-11 | NULL |
| bob    | 400000 | M      | 2023-11-11 | NULL |
| nita   | 400000 | M      | 2023-11-11 | NULL |
| pari   | 400000 | M      | 2023-11-22 | NULL |
| rahul  | 400000 | M      | 2023-11-20 | NULL |
| meghna | 400000 | F      | 2023-11-03 | NULL |
| Hadwt  | 400000 | M      | 2023-10-03 | NULL |
| Neha   | 400000 | F      | 2023-09-03 | NULL |
| Neha   | 400000 | F      | 2023-09-03 | NULL |
| Hadwt  | 400000 | M      | 2023-10-03 | NULL |
| deepa  |   NULL | NULL   | NULL       | NULL |
| NULL   |   NULL | NULL   | NULL       |  101 |
| NULL   |   NULL | NULL   | NULL       |  102 |
+--------+--------+--------+------------+------+
15 rows in set (0.00 sec)

update employee set id = 1 where name = nikita;
update employee set id = 1 where name = Nikita;
update employee set id = 1 where name = "Nikita";
update employee set id = 2 where name = "Muskan";
update employee set id = 3 where name = "Tejas";
update employee set id = 4 where name = "bob";
update employee set id = 4 where name = "bob";

select * from employee;
+--------+--------+--------+------------+------+
| name   | salary | gender | doj        | id   |
+--------+--------+--------+------------+------+
| Nikita | 400000 | F      | 2023-11-01 |    1 |
| Muskan | 400000 | F      | 2023-07-23 |    2 |
| Tejas  | 400000 | M      | 2023-11-11 |    3 |
| bob    | 400000 | M      | 2023-11-11 |    4 |
| nita   | 400000 | M      | 2023-11-11 | NULL |
| pari   | 400000 | M      | 2023-11-22 | NULL |
| rahul  | 400000 | M      | 2023-11-20 | NULL |
| meghna | 400000 | F      | 2023-11-03 | NULL |
| Hadwt  | 400000 | M      | 2023-10-03 | NULL |
| Neha   | 400000 | F      | 2023-09-03 | NULL |
| Neha   | 400000 | F      | 2023-09-03 | NULL |
| Hadwt  | 400000 | M      | 2023-10-03 | NULL |
| deepa  |   NULL | NULL   | NULL       | NULL |
| NULL   |   NULL | NULL   | NULL       |  101 |
| NULL   |   NULL | NULL   | NULL       |  102 |
+--------+--------+--------+------------+------+
15 rows in set (0.00 sec)

update employee set salary = 200000 where id = 1;

select name gender from employee where salary>=300000;
+--------+
| gender |
+--------+
| Muskan |
| Tejas  |
| bob    |
| nita   |
| pari   |
| rahul  |
| meghna |
| Hadwt  |
| Neha   |
| Neha   |
| Hadwt  |
+--------+
11 rows in set (0.00 sec)

select name gender from employee where salary>300000;
+--------+
| gender |
+--------+
| Muskan |
| Tejas  |
| bob    |
| nita   |
| pari   |
| rahul  |
| meghna |
| Hadwt  |
| Neha   |
| Neha   |
| Hadwt  |
+--------+
11 rows in set (0.00 sec)

select name gender from employee where salary>200000;
+--------+
| gender |
+--------+
| Muskan |
| Tejas  |
| bob    |
| nita   |
| pari   |
| rahul  |
| meghna |
| Hadwt  |
| Neha   |
| Neha   |
| Hadwt  |
+--------+
11 rows in set (0.00 sec)

alter table employee add address varchar(50);


select * from employee;
+--------+--------+--------+------------+------+---------+
| name   | salary | gender | doj        | id   | address |
+--------+--------+--------+------------+------+---------+
| Nikita | 200000 | F      | 2023-11-01 |    1 | NULL    |
| Muskan | 400000 | F      | 2023-07-23 |    2 | NULL    |
| Tejas  | 400000 | M      | 2023-11-11 |    3 | NULL    |
| bob    | 400000 | M      | 2023-11-11 |    4 | NULL    |
| nita   | 400000 | M      | 2023-11-11 | NULL | NULL    |
| pari   | 400000 | M      | 2023-11-22 | NULL | NULL    |
| rahul  | 400000 | M      | 2023-11-20 | NULL | NULL    |
| meghna | 400000 | F      | 2023-11-03 | NULL | NULL    |
| Hadwt  | 400000 | M      | 2023-10-03 | NULL | NULL    |
| Neha   | 400000 | F      | 2023-09-03 | NULL | NULL    |
| Neha   | 400000 | F      | 2023-09-03 | NULL | NULL    |
| Hadwt  | 400000 | M      | 2023-10-03 | NULL | NULL    |
| deepa  |   NULL | NULL   | NULL       | NULL | NULL    |
| NULL   |   NULL | NULL   | NULL       |  101 | NULL    |
| NULL   |   NULL | NULL   | NULL       |  102 | NULL    |
+--------+--------+--------+------------+------+---------+
15 rows in set (0.00 sec)

update employee set address="assam" where id =1;
update employee set address="bengalore" where id =2;
update employee set address="karnataka" where id =3;
update employee set address="karnataka" where id =4;
update employee set address="Assam" where name ="rahul";
update employee set address="ooty" where name ="deepa";

select * from employee where address="bengalore";
+--------+--------+--------+------------+------+-----------+
| name   | salary | gender | doj        | id   | address   |
+--------+--------+--------+------------+------+-----------+
| Muskan | 400000 | F      | 2023-07-23 |    2 | bengalore |
+--------+--------+--------+------------+------+-----------+
1 row in set (0.00 sec)

select * from employee where address="karnataka";
+-------+--------+--------+------------+------+-----------+
| name  | salary | gender | doj        | id   | address   |
+-------+--------+--------+------------+------+-----------+
| Tejas | 400000 | M      | 2023-11-11 |    3 | karnataka |
| bob   | 400000 | M      | 2023-11-11 |    4 | karnataka |
+-------+--------+--------+------------+------+-----------+
2 rows in set (0.00 sec)

select * from employee where address="karnataka" or address = "ooty";
+-------+--------+--------+------------+------+-----------+
| name  | salary | gender | doj        | id   | address   |
+-------+--------+--------+------------+------+-----------+
| Tejas | 400000 | M      | 2023-11-11 |    3 | karnataka |
| bob   | 400000 | M      | 2023-11-11 |    4 | karnataka |
| deepa |   NULL | NULL   | NULL       | NULL | ooty      |
+-------+--------+--------+------------+------+-----------+
3 rows in set (0.00 sec)

select select * from employee where address in ("bengalore","Assam");
select select * from employee where address in("bengalore","Assam");
select select * from employee where address IN ("bengalore","Assam");
select * from employee where address IN ("bengalore","Assam");
+--------+--------+--------+------------+------+-----------+
| name   | salary | gender | doj        | id   | address   |
+--------+--------+--------+------------+------+-----------+
| Nikita | 200000 | F      | 2023-11-01 |    1 | assam     |
| Muskan | 400000 | F      | 2023-07-23 |    2 | bengalore |
| rahul  | 400000 | M      | 2023-11-20 | NULL | Assam     |
+--------+--------+--------+------------+------+-----------+
3 rows in set (0.00 sec)

select * from employee where id IN (1,2,4);
+--------+--------+--------+------------+------+-----------+
| name   | salary | gender | doj        | id   | address   |
+--------+--------+--------+------------+------+-----------+
| Nikita | 200000 | F      | 2023-11-01 |    1 | assam     |
| Muskan | 400000 | F      | 2023-07-23 |    2 | bengalore |
| bob    | 400000 | M      | 2023-11-11 |    4 | karnataka |
+--------+--------+--------+------------+------+-----------+
3 rows in set (0.00 sec)

select * from employee where name IN ("Nikita","Muskan","pari");
+--------+--------+--------+------------+------+-----------+
| name   | salary | gender | doj        | id   | address   |
+--------+--------+--------+------------+------+-----------+
| Nikita | 200000 | F      | 2023-11-01 |    1 | assam     |
| Muskan | 400000 | F      | 2023-07-23 |    2 | bengalore |
| pari   | 400000 | M      | 2023-11-22 | NULL | NULL      |
+--------+--------+--------+------------+------+-----------+
3 rows in set (0.00 sec)

create employee1(id int, dept varchar(50),doj date,name varchar(30),email varchar(50));
create table employee1(id int, dept varchar(50),doj date,name varchar(30),email varchar(50));

insert into employee1 values(10,"JD","2023-11-05","ankit","ankit@gmail.com");
insert into employee1 values(15,"FD","2023-11-08","ankita","ankita@gmail.com");
insert into employee1 values(20,"TL","2023-10-08","viki","viki@gmail.com");
insert into employee1 values(25,"SD","2023-10-20","sonali","sonali@gmail.com");
insert into employee1 values(30,"ASE","2022-10-20","ravi","ravi@gmail.com");

select * from employee1;
+------+------+------------+--------+------------------+
| id   | dept | doj        | name   | email            |
+------+------+------------+--------+------------------+
|   10 | JD   | 2023-11-05 | ankit  | ankit@gmail.com  |
|   15 | FD   | 2023-11-08 | ankita | ankita@gmail.com |
|   20 | TL   | 2023-10-08 | viki   | viki@gmail.com   |
|   25 | SD   | 2023-10-20 | sonali | sonali@gmail.com |
|   30 | ASE  | 2022-10-20 | ravi   | ravi@gmail.com   |
+------+------+------------+--------+------------------+
5 rows in set (0.00 sec)

insert into employee1 values(35,"ASE","2022-10-20","ravia","ravia@gmail.com");
insert into employee1 values(40,"ASE","2022-10-20","avia","avia@gmail.com");

select id,name from employee1 where dept=ASE and doj="2022-10-20";
select id,name from employee1 where dept="ASE" AND doj="2022-10-20";
+------+-------+
| id   | name  |

+------+-------+
|   30 | ravi  |
|   35 | ravia |
|   40 | avia  |
+------+-------+
3 rows in set (0.00 sec)

select id,name from employee1 where dept="FD" AND doj="2022-10-20";

insert into employee1 values(45,"JD","2023-11-05","Nikita","niki@gmail.com");
insert into employee1 values(50,"FD","2023-11-05","Muskan","niki@gmail.com");


select * from employee1;
+------+------+------------+--------+------------------+
| id   | dept | doj        | name   | email            |
+------+------+------------+--------+------------------+
|   10 | JD   | 2023-11-05 | ankit  | ankit@gmail.com  |
|   15 | FD   | 2023-11-08 | ankita | ankita@gmail.com |
|   20 | TL   | 2023-10-08 | viki   | viki@gmail.com   |
|   25 | SD   | 2023-10-20 | sonali | sonali@gmail.com |
|   30 | ASE  | 2022-10-20 | ravi   | ravi@gmail.com   |
|   35 | ASE  | 2022-10-20 | ravia  | ravia@gmail.com  |
|   40 | ASE  | 2022-10-20 | avia   | avia@gmail.com   |
|   45 | JD   | 2023-11-05 | Nikita | niki@gmail.com   |
|   50 | FD   | 2023-11-05 | Muskan | niki@gmail.com   |
+------+------+------------+--------+------------------+
9 rows in set (0.00 sec)

select id,name from employee1 where dept="FD" AND email="niki@gmail.com";
+------+--------+
| id   | name   |
+------+--------+
|   50 | Muskan |
+------+--------+
1 row in set (0.00 sec)

select id,name from employee1 where boj between '2022-10-20' and '2023-11-08';
select id,name from employee1 where doj between '2022-10-20' and '2023-11-08';
+------+--------+
| id   | name   |
+------+--------+
|   10 | ankit  |
|   15 | ankita |
|   20 | viki   |
|   25 | sonali |
|   30 | ravi   |
|   35 | ravia  |
|   40 | avia   |
|   45 | Nikita |
|   50 | Muskan |
+------+--------+
9 rows in set (0.00 sec)

select id,name from employee1 where id between 20 and 45;
+------+--------+
| id   | name   |
+------+--------+
|   20 | viki   |
|   25 | sonali |
|   30 | ravi   |
|   35 | ravia  |
|   40 | avia   |
|   45 | Nikita |
+------+--------+
6 rows in set (0.00 sec)
alter table employee1  rename column id to employee_id;
alter table employee1  rename column dept to employee_dept;
alter table employee1  rename column doj to employee_doj;
alter table employee1  rename column email to employee_email;


select * from employee1;
+-------------+---------------+--------------+---------------+------------------+
| employee_id | employee_dept | employee_doj | employee_name | employee_email   |
+-------------+---------------+--------------+---------------+------------------+
|          10 | JD            | 2023-11-05   | ankit         | ankit@gmail.com  |
|          15 | FD            | 2023-11-08   | ankita        | ankita@gmail.com |
|          20 | TL            | 2023-10-08   | viki          | viki@gmail.com   |
|          25 | SD            | 2023-10-20   | sonali        | sonali@gmail.com |
|          30 | ASE           | 2022-10-20   | ravi          | ravi@gmail.com   |
|          35 | ASE           | 2022-10-20   | ravia         | ravia@gmail.com  |
|          40 | ASE           | 2022-10-20   | avia          | avia@gmail.com   |
|          45 | JD            | 2023-11-05   | Nikita        | niki@gmail.com   |
|          50 | FD            | 2023-11-05   | Muskan        | niki@gmail.com   |
+-------------+---------------+--------------+---------------+------------------+
9 rows in set (0.00 sec)

alter table employee1 rename to employee2;


select * from employee2;
+-------------+---------------+--------------+---------------+------------------+
| employee_id | employee_dept | employee_doj | employee_name | employee_email   |
+-------------+---------------+--------------+---------------+------------------+
|          10 | JD            | 2023-11-05   | ankit         | ankit@gmail.com  |
|          15 | FD            | 2023-11-08   | ankita        | ankita@gmail.com |
|          20 | TL            | 2023-10-08   | viki          | viki@gmail.com   |
|          25 | SD            | 2023-10-20   | sonali        | sonali@gmail.com |
|          30 | ASE           | 2022-10-20   | ravi          | ravi@gmail.com   |
|          35 | ASE           | 2022-10-20   | ravia         | ravia@gmail.com  |
|          40 | ASE           | 2022-10-20   | avia          | avia@gmail.com   |
|          45 | JD            | 2023-11-05   | Nikita        | niki@gmail.com   |
|          50 | FD            | 2023-11-05   | Muskan        | niki@gmail.com   |
+-------------+---------------+--------------+---------------+------------------+
9 rows in set (0.00 sec)


select curdate();
+------------+
| curdate()  |
+------------+
| 2023-12-06 |
+------------+
1 row in set (0.00 sec)

mysql> select curtime();
+-----------+
| curtime() |
+-----------+
| 17:07:57  |
+-----------+
1 row in set (0.00 sec)

 delete from employee2 where employee_id=10;

create table student(id int, name varchar(20));

insert into student values(1,"nikita"),(2,"muskan"),(3,"neha"),(4,"abhi"),(5,"niki"),(6,"mus"),(7,"pari");
insert into student values(1,"nikita"),(2,"muskan"),(3,"neha");

select * from student;
+------+--------+
| id   | name   |
+------+--------+
|    1 | nikita |
|    2 | muskan |
|    3 | neha   |
|    4 | abhi   |
|    5 | niki   |
|    6 | mus    |
|    7 | pari   |
|    1 | nikita |
|    2 | muskan |
|    3 | neha   |
+------+--------+
10 rows in set (0.00 sec)

truncate table student;

select * from student;

desc student;
+-------+-------------+------+-----+---------+-------+
| Field | Type        | Null | Key | Default | Extra |
+-------+-------------+------+-----+---------+-------+
| id    | int         | YES  |     | NULL    |       |
| name  | varchar(20) | YES  |     | NULL    |       |
+-------+-------------+------+-----+---------+-------+

select * from student;
