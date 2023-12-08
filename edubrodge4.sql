use edu10534;

drop table student;

create table student(usn int primary key,name varchar(20),dob int,city varchar(20));

desc student;
+-------+-------------+------+-----+---------+-------+
| Field | Type        | Null | Key | Default | Extra |
+-------+-------------+------+-----+---------+-------+
| usn   | int         | NO   | PRI | NULL    |       |
| name  | varchar(20) | YES  |     | NULL    |       |
| dob   | int         | YES  |     | NULL    |       |
| city  | varchar(20) | YES  |     | NULL    |       |
+-------+-------------+------+-----+---------+-------+
4 rows in set (0.00 sec)

alter table student modify usn varchar(20);

alter table student modify dob date;

desc student;
+-------+-------------+------+-----+---------+-------+
| Field | Type        | Null | Key | Default | Extra |
+-------+-------------+------+-----+---------+-------+
| usn   | varchar(20) | NO   | PRI | NULL    |       |
| name  | varchar(20) | YES  |     | NULL    |       |
| dob   | date        | YES  |     | NULL    |       |
| city  | varchar(20) | YES  |     | NULL    |       |
+-------+-------------+------+-----+---------+-------+
4 rows in set (0.00 sec)

insert into student values('1am19cs126','Nikita','2000-11-29','bihar'),('r2016404','Muakan','2002-04-22','bengalore'),('1nh19ec405','muskan','2000-10-15','bihar');
insert into student values('1am19cs122','hadwt','2000-11-20','bihar'),('1am19cs116','neha','2002-04-20','bengalore'),('1nh19ec406','padmavathi','2000-08-07','bengalore');

drop table employee;

create table employee(id int, name varchar(20),company varchar(20) default 'capgemini');

insert into employee values(101,'nikita','tcs'),(102,'neha','');
insert into employee values(103,'niki','tcs'),(104,'nia','');

create table stud(usn int primary key,name varchar(20),dob int,college varchar(20) default 'amc engineering');

drop table stud;

create table emp(id int, name varchar(20),email varchar(50) unique);

insert into employee values(103,'niki','niki@gmail.com'),(104,'nia','nia@gmail.com');
insert into employee values(101,'alia','alia@gmail.com'),(102,'bob','bob@gmail.com');
insert into employee values(101,'alia','alia@gmail.com'),(102,'bob','bob@gmail.com');

desc emp;
+-------+-------------+------+-----+---------+-------+
| Field | Type        | Null | Key | Default | Extra |
+-------+-------------+------+-----+---------+-------+
| id    | int         | YES  |     | NULL    |       |
| name  | varchar(20) | YES  |     | NULL    |       |
| email | varchar(50) | YES  | UNI | NULL    |       |
+-------+-------------+------+-----+---------+-------+
3 rows in set (0.00 sec)
desc employee;
+---------+-------------+------+-----+-----------+-------+
| Field   | Type        | Null | Key | Default   | Extra |
+---------+-------------+------+-----+-----------+-------+
| id      | int         | YES  |     | NULL      |       |
| name    | varchar(20) | YES  |     | NULL      |       |
| company | varchar(20) | YES  |     | capgemini |       |
+---------+-------------+------+-----+-----------+-------+
3 rows in set (0.00 sec)

select * from employee;
+------+--------+----------------+
| id   | name   | company        |
+------+--------+----------------+
|  101 | nikita | tcs            |
|  102 | neha   |                |
|  103 | niki   | tcs            |
|  104 | nia    |                |
|  103 | niki   | niki@gmail.com |
|  104 | nia    | nia@gmail.com  |
|  101 | alia   | alia@gmail.com |
|  102 | bob    | bob@gmail.com  |
|  101 | alia   | alia@gmail.com |
|  102 | bob    | bob@gmail.com  |
+------+--------+----------------+
10 rows in set (0.00 sec)

insert into emp values(101,'alia','alia@gmail.com'),(102,'bob','bob@gmail.com');
insert into emp values(103,'niki','niki@gmail.com'),(104,'nia','nia@gmail.com');
insert into employee (id,name) values(103,'niki');

select * from employee;
+------+--------+----------------+
| id   | name   | company        |
+------+--------+----------------+
|  101 | nikita | tcs            |
|  102 | neha   |                |
|  103 | niki   | tcs            |
|  104 | nia    |                |
|  103 | niki   | niki@gmail.com |
|  104 | nia    | nia@gmail.com  |
|  101 | alia   | alia@gmail.com |
|  102 | bob    | bob@gmail.com  |
|  101 | alia   | alia@gmail.com |
|  102 | bob    | bob@gmail.com  |
|  103 | niki   | capgemini      |
+------+--------+----------------+
11 rows in set (0.00 sec)

create table empl(id int , name varchar(20),company varchar(20),age int check(age>=18));

insert into empl values(1,'niki','tcs',18);
insert into empl values(2,'nia','capgemini',23);
insert into empl values(3,'muskan','tcs',22);


desc empl;
+---------+-------------+------+-----+---------+-------+
| Field   | Type        | Null | Key | Default | Extra |
+---------+-------------+------+-----+---------+-------+
| id      | int         | YES  |     | NULL    |       |
| name    | varchar(20) | YES  |     | NULL    |       |
| company | varchar(20) | YES  |     | NULL    |       |
| age     | int         | YES  |     | NULL    |       |
+---------+-------------+------+-----+---------+-------+
4 rows in set (0.00 sec)

create table empl1(id int, name varchar(20) NOT NULL, company varchar(20));

insert into empl1 values(1,'muskan','tcs');
insert into empl1 values(2,'niki','tcs');
insert into empl1 values(3,'bob','tcs');

create table student3(id int,name varchar(20),dob date,fee int,city varchar(20));

desc student3;
+-------+-------------+------+-----+---------+-------+
| Field | Type        | Null | Key | Default | Extra |
+-------+-------------+------+-----+---------+-------+
| id    | int         | YES  |     | NULL    |       |
| name  | varchar(20) | YES  |     | NULL    |       |
| dob   | date        | YES  |     | NULL    |       |
| fee   | int         | YES  |     | NULL    |       |
| city  | varchar(20) | YES  |     | NULL    |       |
+-------+-------------+------+-----+---------+-------+
5 rows in set (0.00 sec)

insert into student3 values(101,'bob','2000-11-29',2000,'bengalore'),(102,'niki','2000-10-29',2000,'bihar'),(103,'mus','2002-04-23',2000,'bengalore');
insert into student3 values(104,'neha','2000-10-20',2000,'bihar'),(105,'nia','2002-04-20',2000,'bengalore');

drop table student3;

create table student3(id int primary key,name varchar(20),dob date,fee int,city varchar(20));

insert into student3 values(101,'bob','2000-11-29',2000,'bengalore'),(102,'niki','2000-10-29',2000,'bihar'),(103,'mus','2002-04-23',2000,'bengalore');
insert into student3 values(104,'neha','2000-10-20',2000,'bihar'),(105,'nia','2002-04-20',2000,'bengalore');

desc student3;
+-------+-------------+------+-----+---------+-------+
| Field | Type        | Null | Key | Default | Extra |
+-------+-------------+------+-----+---------+-------+
| id    | int         | NO   | PRI | NULL    |       |
| name  | varchar(20) | YES  |     | NULL    |       |
| dob   | date        | YES  |     | NULL    |       |
| fee   | int         | YES  |     | NULL    |       |
| city  | varchar(20) | YES  |     | NULL    |       |
+-------+-------------+------+-----+---------+-------+
5 rows in set (0.00 sec)

create table course(cid int,cname varchar(20),start_date int, id int , foreign key(id) references student3(id));

desc course;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| cid        | int         | YES  |     | NULL    |       |
| cname      | varchar(20) | YES  |     | NULL    |       |
| start_date | int         | YES  |     | NULL    |       |
| id         | int         | YES  | MUL | NULL    |       |
+------------+-------------+------+-----+---------+-------+
4 rows in set (0.00 sec)

drop table course;

create table course(cid int primary key,cname varchar(20),start_date int, id int , foreign key(id) references student3(id));

desc course;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| cid        | int         | NO   | PRI | NULL    |       |
| cname      | varchar(20) | YES  |     | NULL    |       |
| start_date | int         | YES  |     | NULL    |       |
| id         | int         | YES  | MUL | NULL    |       |
+------------+-------------+------+-----+---------+-------+
4 rows in set (0.00 sec)

drop table course;

create table course(cid int,cname varchar(20),start_date date, id int , foreign key(id) references student3(id));


insert into course values(1,'java','2023-11-16',101);
insert into course values(2,'java','2023-11-16',102);
insert into course values(3,'java','2023-11-16',103);
insert into course values(4,'java','2023-11-16',104);


create table emp1(id int primary key, name varchar(20),salary int,gender varchar(10),email varchar(20));

desc emp1;
+--------+-------------+------+-----+---------+-------+
| Field  | Type        | Null | Key | Default | Extra |
+--------+-------------+------+-----+---------+-------+
| id     | int         | NO   | PRI | NULL    |       |
| name   | varchar(20) | YES  |     | NULL    |       |
| salary | int         | YES  |     | NULL    |       |
| gender | varchar(10) | YES  |     | NULL    |       |
| email  | varchar(20) | YES  |     | NULL    |       |
+--------+-------------+------+-----+---------+-------+
5 rows in set (0.00 sec)

insert into emp1 values(1,'bob',2000,'M','bob@gmail.com');
insert into emp1 values(2,'nia',2000,'f','nia@gmail.com');
insert into emp1 values(3,'neha',2000,'f','neha@gmail.com');

create table company1(cid int primary key,cname varchar(20),joining_date date, id int , foreign key(id) references emp1(id));

desc company1;
+--------------+-------------+------+-----+---------+-------+
| Field        | Type        | Null | Key | Default | Extra |
+--------------+-------------+------+-----+---------+-------+
| cid          | int         | NO   | PRI | NULL    |       |
| cname        | varchar(20) | YES  |     | NULL    |       |
| joining_date | date        | YES  |     | NULL    |       |
| id           | int         | YES  | MUL | NULL    |       |
+--------------+-------------+------+-----+---------+-------+
4 rows in set (0.00 sec)

insert into company1 values(101,'tsc','2023-11-16',1);
insert into company1 values(102,'tsc','2023-11-16',2);
insert into company1 values(103,'tcs','2023-11-16',3);

select * from emp1;
+----+------+--------+--------+----------------+
| id | name | salary | gender | email          |
+----+------+--------+--------+----------------+
|  1 | bob  |   2000 | M      | bob@gmail.com  |
|  2 | nia  |   2000 | f      | nia@gmail.com  |
|  3 | neha |   2000 | f      | neha@gmail.com |
+----+------+--------+--------+----------------+
3 rows in set (0.00 sec)

select * from company1;
+-----+-------+--------------+------+
| cid | cname | joining_date | id   |
+-----+-------+--------------+------+
| 101 | tsc   | 2023-11-16   |    1 |
| 102 | tsc   | 2023-11-16   |    2 |
| 103 | tcs   | 2023-11-16   |    3 |
+-----+-------+--------------+------+
3 rows in set (0.00 sec)

show tables;
+--------------------+
| Tables_in_edu10534 |
+--------------------+
| company1           |
| course             |
| emp                |
| emp1               |
| empl               |
| empl1              |
| employee           |
| employee2          |
| student            |
| student1           |
| student3           |
| students           |
+--------------------+
12 rows in set (0.00 sec)

create table student4(id int primary key, name varchar(20) not null,college varchar(20) default 'AMC',age int check(age>=16),email varchar(20) unique);

insert into student4 values(101,'niki','amc',16,'niki@gmail.com');
insert into student4 values(102,'nia','amc',17,'nia@gmail.com');
insert into student4 values(103,'mus','amc',18,'mus@gmail.com');
insert into student4 values(104,'daisy','amc',18,'daisy@gmail.com');
insert into student4(id,name,age,email) values(105,'pari',18,'pari@gmail.com');

select * from student4;
+-----+-------+---------+------+-----------------+
| id  | name  | college | age  | email           |
+-----+-------+---------+------+-----------------+
| 101 | niki  | amc     |   16 | niki@gmail.com  |
| 102 | nia   | amc     |   17 | nia@gmail.com   |
| 103 | mus   | amc     |   18 | mus@gmail.com   |
| 104 | daisy | amc     |   18 | daisy@gmail.com |
| 105 | pari  | AMC     |   18 | pari@gmail.com  |
+-----+-------+---------+------+-----------------+


create table course1(cid int,cname varchar(20),start_date date, id int , foreign key(id) references student4(id));


insert into course1 values(1,'java','2023-11-16',101);
insert into course1 values(2,'java','2023-11-16',102);
insert into course1 values(3,'java','2023-11-16',103);
insert into course1 values(4,'java','2023-11-16',104);
insert into course1 values(5,'java','2023-11-16',105);

desc course1;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| cid        | int         | YES  |     | NULL    |       |
| cname      | varchar(20) | YES  |     | NULL    |       |
| start_date | date        | YES  |     | NULL    |       |
| id         | int         | YES  | MUL | NULL    |       |
+------------+-------------+------+-----+---------+-------+
4 rows in set (0.00 sec)

desc student4;
+---------+-------------+------+-----+---------+-------+
| Field   | Type        | Null | Key | Default | Extra |
+---------+-------------+------+-----+---------+-------+
| id      | int         | NO   | PRI | NULL    |       |
| name    | varchar(20) | NO   |     | NULL    |       |
| college | varchar(20) | YES  |     | AMC     |       |
| age     | int         | YES  |     | NULL    |       |
| email   | varchar(20) | YES  | UNI | NULL    |       |
+---------+-------------+------+-----+---------+-------+
5 rows in set (0.00 sec)
select * from student;
+------------+------------+------------+-----------+
| usn        | name       | dob        | city      |
+------------+------------+------------+-----------+
| 1am19cs116 | neha       | 2002-04-20 | bengalore |
| 1am19cs122 | hadwt      | 2000-11-20 | bihar     |
| 1am19cs126 | Nikita     | 2000-11-29 | bihar     |
| 1nh19ec405 | muskan     | 2000-10-15 | bihar     |
| 1nh19ec406 | padmavathi | 2000-08-07 | bengalore |
| r2016404   | Muakan     | 2002-04-22 | bengalore |
+------------+------------+------------+-----------+
6 rows in set (0.00 sec)

alter table student add dept varchar(20);
alter table student add perc int;


update student set dept = 'cse' where name='neha';
update student set dept = 'ece' where name='hadwt';
update student set dept = 'cse' where name='nikita';
update student set dept = 'ece' where name='muskan';
update student set dept = 'ece' where name='padmavathi';
update student set dept = 'bca' where name='Muskan';
update student set perc = 90 where name='Muskan';
update student set perc=89 where name='padmavathi';
update student set perc = 89 where name='Nikita';
update student set perc=80 where name='neha';
update student set perc=90 where name='hadwt';

 select * from student;
+------------+------------+------------+-----------+------+------+
| usn        | name       | dob        | city      | dept | perc |
+------------+------------+------------+-----------+------+------+
| 1am19cs116 | neha       | 2002-04-20 | bengalore | cse  |   80 |
| 1am19cs122 | hadwt      | 2000-11-20 | bihar     | ece  |   90 |
| 1am19cs126 | Nikita     | 2000-11-29 | bihar     | cse  |   89 |
| 1nh19ec405 | muskan     | 2000-10-15 | bihar     | bca  |   90 |
| 1nh19ec406 | padmavathi | 2000-08-07 | bengalore | ece  |   89 |
| r2016404   | Muakan     | 2002-04-22 | bengalore | NULL | NULL |
+------------+------------+------------+-----------+------+------+
6 rows in set (0.00 sec)


select name from student where name like '%n';
+--------+
| name   |
+--------+
| muskan |
| Muakan |
+--------+
2 rows in set (0.00 sec)

select name from student where name like 'n%';
+--------+
| name   |
+--------+
| neha   |
| Nikita |
+--------+
2 rows in set (0.00 sec)

select name from student where name like '-u%';


select name from student where name like '_u%';
+--------+
| name   |
+--------+
| muskan |
| Muakan |
+--------+
2 rows in set (0.00 sec)

select name from student where name like '_k%';
Empty set (0.00 sec)

mysql> select dept,count(usn) from student group by dept having count(usn)='1am19cs126';
+------+------------+
| dept | count(usn) |
+------+------------+
| bca  |          1 |
| NULL |          1 |
+------+------------+
2 rows in set, 1 warning (0.00 sec)


mysql> select repeat ('$',10);
+-----------------+
| repeat ('$',10) |
+-----------------+
| $$$$$$$$$$      |
+-----------------+
1 row in set (0.00 sec)

mysql> select dept,count(usn) from student group by dept having count(usn)=1;
+------+------------+
| dept | count(usn) |
+------+------------+
| bca  |          1 |
| NULL |          1 |
+------+------------+
2 rows in set (0.00 sec)