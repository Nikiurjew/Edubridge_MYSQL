Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 57
Server version: 8.0.34 MySQL Community Server - GPL

Copyright (c) 2000, 2023, Oracle and/or its affiliates.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| college            |
| edu10534           |
| information_schema |
| joins              |
| mysql              |
| performance_schema |
| student_manage     |
| sys                |
| user1              |
+--------------------+
9 rows in set (0.01 sec)

mysql> use user1;
Database changed
mysql> create table  student(id int, name varchar(20));
Query OK, 0 rows affected (0.02 sec)

mysql> insert into student values(101,'nikita');
Query OK, 1 row affected (0.00 sec)

mysql> drop student;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'student' at line 1
mysql> drop table student;
Query OK, 0 rows affected (0.01 sec)

mysql> create table college(id int, clg_name varchar(30),city varchar(20));
Query OK, 0 rows affected (0.01 sec)

mysql> insert into college values(1,'amc','assam');
Query OK, 1 row affected (0.00 sec)

mysql> create user 'bob' identified by '1234';
Query OK, 0 rows affected (0.01 sec)

mysql> grant select on college to bob;
Query OK, 0 rows affected (0.00 sec)

mysql> grant select,alter,delete,update on college to bob;
Query OK, 0 rows affected (0.01 sec)

mysql> revoke insert on college to college;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'to college' at line 1
mysql> revoke insert on user1 to user1;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'to user1' at line 1
mysql> revoke insert on college from college;
ERROR 1147 (42000): There is no such grant defined for user 'college' on host '%' on table 'college'
mysql> grant insert on college to bob;
Query OK, 0 rows affected (0.00 sec)

mysql> revoke insert on college from college;
ERROR 1147 (42000): There is no such grant defined for user 'college' on host '%' on table 'college'
mysql> revoke insert on college from bob;
Query OK, 0 rows affected (0.00 sec)

mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| college            |
| edu10534           |
| information_schema |
| joins              |
| mysql              |
| performance_schema |
| student_manage     |
| sys                |
| user1              |
+--------------------+
9 rows in set (0.01 sec)

mysql> use edu10534;
Database changed
mysql> show tables;
+--------------------+
| Tables_in_edu10534 |
+--------------------+
| company1           |
| course             |
| course1            |
| doctor             |
| emp                |
| emp1               |
| empl               |
| empl1              |
| employee           |
| employee2          |
| pat                |
| stud_view          |
| student            |
| student1           |
| student3           |
| student4           |
| student5           |
| student6           |
| students           |
+--------------------+
19 rows in set (0.00 sec)

mysql> create table college(id int,name varchar(20),branch varchar(20),perc int,email varchar(20));
Query OK, 0 rows affected (0.02 sec)

mysql> insert into college values(101,'bob','cse',80,'bob@gmail.com');
Query OK, 1 row affected (0.01 sec)

mysql> insert into college values(102,'alice','cse',90,'alice@gmail.com');
Query OK, 1 row affected (0.00 sec)

mysql> insert into college values(103,'david','cse',70,'david@gmail.com');
Query OK, 1 row affected (0.00 sec)

mysql> insert into college values(104,'ashika','ece',75,'ashika@gmail.com');
Query OK, 1 row affected (0.01 sec)

mysql> insert into college values(105,'hemant','ece',74,'hemant@gmail.com');
Query OK, 1 row affected (0.00 sec)

mysql> insert into college values(106,'roopa','ece',75,'roopa@gmail.com');
Query OK, 1 row affected (0.00 sec)

mysql> insert into college values(107,'nikita','mech',80,'nikita@gmail.com');
Query OK, 1 row affected (0.00 sec)

mysql> insert into college values(108,'muskan','mech',87,'muskan@gmail.com');
Query OK, 1 row affected (0.00 sec)

mysql> insert into college values(109,'neha','mech',90,'neha@gmail.com');
Query OK, 1 row affected (0.00 sec)

mysql> insert into college values(110,'daisy','civil',95,'daisy@gmail.com');
Query OK, 1 row affected (0.00 sec)

mysql> insert into college values(111,'pari','civil',55,'pari@gmail.com');
Query OK, 1 row affected (0.00 sec)

mysql> insert into college values(112,'rose','civil',88,'rose@gmail.com');
Query OK, 1 row affected (0.00 sec)

mysql> create view student_view as select name,branch from college where branch ='cse';
Query OK, 0 rows affected (0.00 sec)

mysql> select * from student_view;
+-------+--------+
| name  | branch |
+-------+--------+
| bob   | cse    |
| alice | cse    |
| david | cse    |
+-------+--------+
3 rows in set (0.00 sec)

mysql> create view student_view as select * from college where branch ='cse';
ERROR 1050 (42S01): Table 'student_view' already exists
mysql> create view students_view as select * from college where branch ='cse';
Query OK, 0 rows affected (0.01 sec)

mysql> select * from students_view;
+------+-------+--------+------+-----------------+
| id   | name  | branch | perc | email           |
+------+-------+--------+------+-----------------+
|  101 | bob   | cse    |   80 | bob@gmail.com   |
|  102 | alice | cse    |   90 | alice@gmail.com |
|  103 | david | cse    |   70 | david@gmail.com |
+------+-------+--------+------+-----------------+
3 rows in set (0.00 sec)

mysql> select * from college;
+------+--------+--------+------+------------------+
| id   | name   | branch | perc | email            |
+------+--------+--------+------+------------------+
|  101 | bob    | cse    |   80 | bob@gmail.com    |
|  102 | alice  | cse    |   90 | alice@gmail.com  |
|  103 | david  | cse    |   70 | david@gmail.com  |
|  104 | ashika | ece    |   75 | ashika@gmail.com |
|  105 | hemant | ece    |   74 | hemant@gmail.com |
|  106 | roopa  | ece    |   75 | roopa@gmail.com  |
|  107 | nikita | mech   |   80 | nikita@gmail.com |
|  108 | muskan | mech   |   87 | muskan@gmail.com |
|  109 | neha   | mech   |   90 | neha@gmail.com   |
|  110 | daisy  | civil  |   95 | daisy@gmail.com  |
|  111 | pari   | civil  |   55 | pari@gmail.com   |
|  112 | rose   | civil  |   88 | rose@gmail.com   |
+------+--------+--------+------+------------------+
12 rows in set (0.00 sec)

mysql> select * from student_view;
+-------+--------+
| name  | branch |
+-------+--------+
| bob   | cse    |
| alice | cse    |
| david | cse    |
+-------+--------+
3 rows in set (0.00 sec)

mysql> update college set name = 'ramya' where id=102;
Query OK, 1 row affected (0.00 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select * from college;
+------+--------+--------+------+------------------+
| id   | name   | branch | perc | email            |
+------+--------+--------+------+------------------+
|  101 | bob    | cse    |   80 | bob@gmail.com    |
|  102 | ramya  | cse    |   90 | alice@gmail.com  |
|  103 | david  | cse    |   70 | david@gmail.com  |
|  104 | ashika | ece    |   75 | ashika@gmail.com |
|  105 | hemant | ece    |   74 | hemant@gmail.com |
|  106 | roopa  | ece    |   75 | roopa@gmail.com  |
|  107 | nikita | mech   |   80 | nikita@gmail.com |
|  108 | muskan | mech   |   87 | muskan@gmail.com |
|  109 | neha   | mech   |   90 | neha@gmail.com   |
|  110 | daisy  | civil  |   95 | daisy@gmail.com  |
|  111 | pari   | civil  |   55 | pari@gmail.com   |
|  112 | rose   | civil  |   88 | rose@gmail.com   |
+------+--------+--------+------+------------------+
12 rows in set (0.00 sec)

mysql> select * from students_view;
+------+-------+--------+------+-----------------+
| id   | name  | branch | perc | email           |
+------+-------+--------+------+-----------------+
|  101 | bob   | cse    |   80 | bob@gmail.com   |
|  102 | ramya | cse    |   90 | alice@gmail.com |
|  103 | david | cse    |   70 | david@gmail.com |
+------+-------+--------+------+-----------------+
3 rows in set (0.00 sec)

mysql> update students_view set name = 'jhon' where id=103;
Query OK, 1 row affected (0.01 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select * from students_view;
+------+-------+--------+------+-----------------+
| id   | name  | branch | perc | email           |
+------+-------+--------+------+-----------------+
|  101 | bob   | cse    |   80 | bob@gmail.com   |
|  102 | ramya | cse    |   90 | alice@gmail.com |
|  103 | jhon  | cse    |   70 | david@gmail.com |
+------+-------+--------+------+-----------------+
3 rows in set (0.00 sec)

mysql> select * from college;
+------+--------+--------+------+------------------+
| id   | name   | branch | perc | email            |
+------+--------+--------+------+------------------+
|  101 | bob    | cse    |   80 | bob@gmail.com    |
|  102 | ramya  | cse    |   90 | alice@gmail.com  |
|  103 | jhon   | cse    |   70 | david@gmail.com  |
|  104 | ashika | ece    |   75 | ashika@gmail.com |
|  105 | hemant | ece    |   74 | hemant@gmail.com |
|  106 | roopa  | ece    |   75 | roopa@gmail.com  |
|  107 | nikita | mech   |   80 | nikita@gmail.com |
|  108 | muskan | mech   |   87 | muskan@gmail.com |
|  109 | neha   | mech   |   90 | neha@gmail.com   |
|  110 | daisy  | civil  |   95 | daisy@gmail.com  |
|  111 | pari   | civil  |   55 | pari@gmail.com   |
|  112 | rose   | civil  |   88 | rose@gmail.com   |
+------+--------+--------+------+------------------+
12 rows in set (0.00 sec)

mysql> create view student_ece as select * from college where branch=ece;
ERROR 1054 (42S22): Unknown column 'ece' in 'where clause'
mysql> create view student_ece as select * from college where branch ='ece';
Query OK, 0 rows affected (0.01 sec)

mysql> select * from student_ece;
+------+--------+--------+------+------------------+
| id   | name   | branch | perc | email            |
+------+--------+--------+------+------------------+
|  104 | ashika | ece    |   75 | ashika@gmail.com |
|  105 | hemant | ece    |   74 | hemant@gmail.com |
|  106 | roopa  | ece    |   75 | roopa@gmail.com  |
+------+--------+--------+------+------------------+
3 rows in set (0.00 sec)

mysql> update student_ece set perc = 80 where id = 104;
Query OK, 1 row affected (0.00 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select * from student_ece;
+------+--------+--------+------+------------------+
| id   | name   | branch | perc | email            |
+------+--------+--------+------+------------------+
|  104 | ashika | ece    |   80 | ashika@gmail.com |
|  105 | hemant | ece    |   74 | hemant@gmail.com |
|  106 | roopa  | ece    |   75 | roopa@gmail.com  |
+------+--------+--------+------+------------------+
3 rows in set (0.00 sec)

mysql> create view student_mech as select * from college where branch = 'mech';
Query OK, 0 rows affected (0.01 sec)

mysql> select * from student_mech;
+------+--------+--------+------+------------------+
| id   | name   | branch | perc | email            |
+------+--------+--------+------+------------------+
|  107 | nikita | mech   |   80 | nikita@gmail.com |
|  108 | muskan | mech   |   87 | muskan@gmail.com |
|  109 | neha   | mech   |   90 | neha@gmail.com   |
+------+--------+--------+------+------------------+
3 rows in set (0.00 sec)

mysql> update student_mech set name= 'Tejas' where id = 107;
Query OK, 1 row affected (0.01 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select * from student_mech;
+------+--------+--------+------+------------------+
| id   | name   | branch | perc | email            |
+------+--------+--------+------+------------------+
|  107 | Tejas  | mech   |   80 | nikita@gmail.com |
|  108 | muskan | mech   |   87 | muskan@gmail.com |
|  109 | neha   | mech   |   90 | neha@gmail.com   |
+------+--------+--------+------+------------------+
3 rows in set (0.00 sec)

mysql> create view student_civil as select * from college where branch = 'civil';
Query OK, 0 rows affected (0.00 sec)

mysql> select * from student_civil;
+------+-------+--------+------+-----------------+
| id   | name  | branch | perc | email           |
+------+-------+--------+------+-----------------+
|  110 | daisy | civil  |   95 | daisy@gmail.com |
|  111 | pari  | civil  |   55 | pari@gmail.com  |
|  112 | rose  | civil  |   88 | rose@gmail.com  |
+------+-------+--------+------+-----------------+
3 rows in set (0.00 sec)

mysql> update student_civil set name= 'prats' where id = 111;
Query OK, 1 row affected (0.00 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select * from student_civil;
+------+-------+--------+------+-----------------+
| id   | name  | branch | perc | email           |
+------+-------+--------+------+-----------------+
|  110 | daisy | civil  |   95 | daisy@gmail.com |
|  111 | prats | civil  |   55 | pari@gmail.com  |
|  112 | rose  | civil  |   88 | rose@gmail.com  |
+------+-------+--------+------+-----------------+
3 rows in set (0.00 sec)

mysql> select * from college;
+------+--------+--------+------+------------------+
| id   | name   | branch | perc | email            |
+------+--------+--------+------+------------------+
|  101 | bob    | cse    |   80 | bob@gmail.com    |
|  102 | ramya  | cse    |   90 | alice@gmail.com  |
|  103 | jhon   | cse    |   70 | david@gmail.com  |
|  104 | ashika | ece    |   80 | ashika@gmail.com |
|  105 | hemant | ece    |   74 | hemant@gmail.com |
|  106 | roopa  | ece    |   75 | roopa@gmail.com  |
|  107 | Tejas  | mech   |   80 | nikita@gmail.com |
|  108 | muskan | mech   |   87 | muskan@gmail.com |
|  109 | neha   | mech   |   90 | neha@gmail.com   |
|  110 | daisy  | civil  |   95 | daisy@gmail.com  |
|  111 | prats  | civil  |   55 | pari@gmail.com   |
|  112 | rose   | civil  |   88 | rose@gmail.com   |
+------+--------+--------+------+------------------+
12 rows in set (0.00 sec)