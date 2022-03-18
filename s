QL>
SQL> create table students(regno number(10),
  2  sname varchar2(20),
  3  sgroup varchar2(10),
  4  emailid varchar2(10),
  5  phno number(12),
  6  examtimetable number(10),
  7  s1marks number(10),
  8  s2marks number(10),
  9  s3marks number(10),
 10  total number(10),
 11  avg float(10));

Table created.

SQL> insert into students values(1,'mallika','cs','malik@gmail.com',9874,10-2,20,30,40,90,63.3);
insert into students values(1,'mallika','cs','malik@gmail.com',9874,10-2,20,30,40,90,63.3)
                                             *
ERROR at line 1:
ORA-12899: value too large for column "SYSTEM"."STUDENTS"."EMAILID" (actual:
15, maximum: 10)


SQL> insert into students values(1,'mallika','cs','m@gmail.com',9874,10-2,20,30,40,90,63.3);
insert into students values(1,'mallika','cs','m@gmail.com',9874,10-2,20,30,40,90,63.3)
                                             *
ERROR at line 1:
ORA-12899: value too large for column "SYSTEM"."STUDENTS"."EMAILID" (actual:
11, maximum: 10)


SQL>
SQL> insert into students values(1,'mallika','cs','m@gmailcom',9874,10-2,20,30,40,90,63.3);

1 row created.

SQL> insert into students values(2,'sri','cs','s@gmailcom',7894,11-2,30,20,40,90,63.3);

1 row created.

SQL> insert into students values(2,'sree','mpcs','r@gmailcom',8179,12-2,30,20,30,80,66.6);

1 row created.

SQL> insert into students values(2,'sreevani','mecs','v@gmailcom',7036,13-2,30,20,30,80,66.6);

1 row created.

SQL> insert into students values(5,'srinu','mscs','b@gmailcom',8074,14-2,30,20,30,80,66.6);

1 row created.

SQL> insert into students values(10,'divya','cse','d@gmailcom',7905,15-2,30,20,30,80,66.6);

1 row created.

SQL> insert into students values(11,'anu','bba','a@gmailcom',9908,16-2,20,20,30,70,50);

1 row created.

SQL> insert into students values(16,'sowmya','mpc','y@gmailcom',7412,17-2,20,20,30,70,50);

1 row created.

SQL> insert into students values(18,'krishna','bsc','k@gmailcom',8523,17-2,20,20,30,70,50);

1 row created.

SQL> select *from students;

     REGNO SNAME                SGROUP     EMAILID          PHNO EXAMTIMETABLE
---------- -------------------- ---------- ---------- ---------- -------------
   S1MARKS    S2MARKS    S3MARKS      TOTAL        AVG
---------- ---------- ---------- ---------- ----------
         1 mallika              cs         m@gmailcom       9874             8
        20         30         40         90       63.3

         2 sri                  cs         s@gmailcom       7894             9
        30         20         40         90       63.3

         2 sree                 mpcs       r@gmailcom       8179            10
        30         20         30         80       66.6


     REGNO SNAME                SGROUP     EMAILID          PHNO EXAMTIMETABLE
---------- -------------------- ---------- ---------- ---------- -------------
   S1MARKS    S2MARKS    S3MARKS      TOTAL        AVG
---------- ---------- ---------- ---------- ----------
         2 sreevani             mecs       v@gmailcom       7036            11
        30         20         30         80       66.6

         5 srinu                mscs       b@gmailcom       8074            12
        30         20         30         80       66.6

        10 divya                cse        d@gmailcom       7905            13
        30         20         30         80       66.6


     REGNO SNAME                SGROUP     EMAILID          PHNO EXAMTIMETABLE
---------- -------------------- ---------- ---------- ---------- -------------
   S1MARKS    S2MARKS    S3MARKS      TOTAL        AVG
---------- ---------- ---------- ---------- ----------
        11 anu                  bba        a@gmailcom       9908            14
        20         20         30         70         50

        16 sowmya               mpc        y@gmailcom       7412            15
        20         20         30         70         50

        18 krishna              bsc        k@gmailcom       8523            15
        20         20         30         70         50


9 rows selected.
