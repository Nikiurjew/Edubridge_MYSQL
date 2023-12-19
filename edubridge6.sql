Microsoft Windows [Version 10.0.22621.2715]
(c) Microsoft Corporation. All rights reserved.

C:\Users\nikij>cd..

C:\Users>cd..

C:\>cd "Program Files"

C:\Program Files>cd MySQL

C:\Program Files\MySQL>cd "MySQL Server 8.0"

C:\Program Files\MySQL\MySQL Server 8.0>cd bin

C:\Program Files\MySQL\MySQL Server 8.0\bin>mysql -bob1 -p
mysql: [ERROR] mysql: unknown option '-1'.

C:\Program Files\MySQL\MySQL Server 8.0\bin>mysql -u bob1 -p
Enter password: ****
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 45
Server version: 8.0.34 MySQL Community Server - GPL

Copyright (c) 2000, 2023, Oracle and/or its affiliates.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> user1 show tables;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'user1 show tables' at line 1
mysql> use user1;
Database changed
mysql> show tables;
+-----------------+
| Tables_in_user1 |
+-----------------+
| clg             |
+-----------------+
1 row in set (0.00 sec)

mysql> select * from clg;
+--------+----------+-----------+
| clg_id | clg_name | city      |
+--------+----------+-----------+
|      1 | NIT      | bengalore |
+--------+----------+-----------+
1 row in set (0.00 sec)

mysql> insert into clg values(102,'ssce','bengalore');
ERROR 1142 (42000): INSERT command denied to user 'bob1'@'localhost' for table 'clg'
mysql> quit
Bye

C:\Program Files\MySQL\MySQL Server 8.0\bin>mysql -u root -p
Enter password: *********
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 47
Server version: 8.0.34 MySQL Community Server - GPL

Copyright (c) 2000, 2023, Oracle and/or its affiliates.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> use user1;
Database changed
mysql> grant insert on clg to bob1;
Query OK, 0 rows affected (0.01 sec)

mysql> insert into clg values(102,'ssce','bengalore');
Query OK, 1 row affected (0.00 sec)

mysql> insert into clg values(103,'ssce','bengalore');
Query OK, 1 row affected (0.00 sec)

mysql> select * from clg;
+--------+----------+-----------+
| clg_id | clg_name | city      |
+--------+----------+-----------+
|      1 | NIT      | bengalore |
|    102 | ssce     | bengalore |
|      3 | AMC      | bengalore |
|    103 | ssce     | bengalore |
+--------+----------+-----------+
4 rows in set (0.00 sec)

mysql> alter table clg modify name varchar(20);
ERROR 1054 (42S22): Unknown column 'name' in 'clg'
mysql> alter table clg modify add clgfee int;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'add clgfee int' at line 1
mysql> alter table clg add clgfee int;
Query OK, 0 rows affected (0.01 sec)
Records: 0  Duplicates: 0  Warnings: 0




Enter password: *********
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 44
Server version: 8.0.34 MySQL Community Server - GPL

Copyright (c) 2000, 2023, Oracle and/or its affiliates.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> use user1;
Database changed
mysql> show tables;
+-----------------+
| Tables_in_user1 |
+-----------------+
| clg             |
+-----------------+
1 row in set (0.00 sec)

mysql> insert into clg(3,'AMC','bengalore');
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '3,'AMC','bengalore')' at line 1
mysql> insert into clg values(3,'AMC','bengalore');
Query OK, 1 row affected (0.01 sec)

mysql> create user 'alice' identified by '1234';
Query OK, 0 rows affected (0.01 sec)

mysql> grant select,insert,alter,delete on clg to alice;
Query OK, 0 rows affected (0.00 sec)