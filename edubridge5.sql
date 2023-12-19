use edu10534;

create table student5(id int, name varchar(20),dept varchar(20));


insert into student5 values(1,'nikita','cse'),(2,'muskan','bca'),(3,'neha','ece');


create view stud_view as select id,name from student5;


select * from stud_view;
+------+--------+
| id   | name   |
+------+--------+
|    1 | nikita |
|    2 | muskan |
|    3 | neha   |
+------+--------+
3 rows in set (0.00 sec)

insert into stud_view values(4,'hadwt','cse'),(5,'daisy','bca'),(6,'nia','ece');


select * from stud_view;
+------+--------+
| id   | name   |
+------+--------+
|    1 | nikita |
|    2 | muskan |
|    3 | neha   |
|    4 | hadwt  |
|    5 | daisy  |
|    6 | nia    |
+------+--------+
6 rows in set (0.00 sec)

mysql> select * from student5;
+------+--------+------+
| id   | name   | dept |
+------+--------+------+
|    1 | nikita | cse  |
|    2 | muskan | bca  |
|    3 | neha   | ece  |
|    4 | hadwt  | NULL |
|    5 | daisy  | NULL |
|    6 | nia    | NULL |
+------+--------+------+
6 rows in set (0.00 sec)

mysql> create table student6(id int, name varchar(20));
Query OK, 0 rows affected (0.01 sec)

desc student6;
+-------+-------------+------+-----+---------+-------+
| Field | Type        | Null | Key | Default | Extra |
+-------+-------------+------+-----+---------+-------+
| id    | int         | YES  |     | NULL    |       |
| name  | varchar(20) | YES  |     | NULL    |       |
+-------+-------------+------+-----+---------+-------+
2 rows in set (0.00 sec)

alter table student6 modify id int not null;


alter table student6 modify name varchar(20) primary key;


desc student6;
+-------+-------------+------+-----+---------+-------+
| Field | Type        | Null | Key | Default | Extra |
+-------+-------------+------+-----+---------+-------+
| id    | int         | NO   |     | NULL    |       |
| name  | varchar(20) | NO   | PRI | NULL    |       |
+-------+-------------+------+-----+---------+-------+
2 rows in set (0.00 sec)