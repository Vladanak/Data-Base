Use master;
USE ORL_BSTU;
SELECT  *  FROM  FACULTY;
SELECT  ���_����������  from  FACULTY;
SELECT  '����';

SELECT  ���_�������������, ���_�������  from  TEACHER;

SELECT ���_������������� from TEACHER where ���_�������='����';

SELECT ���_������������� from TEACHER where ���_�������='����' or ���_�������='������';

SELECT ���_������������� from TEACHER where ���_�������='����' and ���='�';

SELECT ���_������������� from TEACHER where ���_�������='����' and ���<>'�';

SELECT Distinct ���_������� FROM TEACHER;

SELECT ���_���������, ����������� FROM AUDITORIUM Order by ����������� Desc;

SELECT Distinct ���_����������, ������ from PROGRESS where ������ BETWEEN '8' and '10';

SELECT Distinct ���_����������, ���_������� from SUBJECT where ���_������� IN ('�����', '������', '��');

SELECT ������������_�������������, ������������ from PROFESSION where ������������ LIKE '%�����%';

use ORL_BSTU;
CREATE table  #STUDENTS
 (   ��� nvarchar(100), ����_�������� date );
    INSERT INTO #STUDENTS (���, ����_��������)
     values ( '���������� ��������� �������������','11.03.1995'),        
          ( '������ ��������� �������',    '07.12.1995'),
           ( '������ �������� ����������',  '12.10.1995'),
           ( '��������� ����� �����������', '09.11.1995'),
           ( '��������� ����� ���������',   '04.07.1995'),
           ( '����� ��������� ���������',   '08.01.1995'),
           ('����� ����� ��������',        '02.08.1995')    
    SELECT  ���, ����_�������� FROM STUDENT;
    SELECT  * FROM #STUDENTS;




use ORL_BSTU;
create table STUDENT 
( ���_��������   integer  identity(1000,1) constraint STUDENT_PK  primary key,
 �������������_������     integer  constraint STUDENT_GROUP_FK foreign key         
                      references GROUPS(�������������_������),        
 ���     nvarchar(100), 
 ����_��������     date,
 STAMP    timestamp,
 INFO     xml,
 FOTO     varbinary
 ) 
insert into STUDENT (�������������_������, ���, ����_��������)
        values (1, '���������� ��������� �������������','11.03.1995'),        
          (1, '������ ��������� �������',    '07.12.1995'),
           (1, '������ �������� ����������',  '12.10.1995'),
           (1, '��������� ����� �����������', '09.11.1995'),
           (1, '��������� ����� ���������',   '04.07.1995'),
           (1, '����� ��������� ���������',   '08.01.1995'),
           (1, '����� ����� ��������',        '02.08.1995')       
insert into STUDENT (�������������_������,���, ����_��������)
    values (2, '����� ������� ��������',         '12.07.1994'),
           (2, '������� �������� ����������',    '06.03.1994'),
           (2, '�������� ����� �����������',     '09.11.1994'),
           (2, '������� ����� ���������',        '04.10.1994'),
           (2, '��������� ��������� ����������', '08.01.1994'),
           (3, '������� ������ ���������',       '02.08.1993'),
           (3, '������� ��� ����������',         '07.12.1993'),
           (3, '������� ����� �����������',      '02.12.1993'),
           (3, '���������� ������� ������������','09.11.1993'),
           (3, '������ ����� ���������',         '04.07.1993'),
           (4, '������� ������ �����������',     '08.03.1992'),
           (4, '������� ����� �������������',    '02.06.1992'),
           (4, '�������� ����� �����������',     '11.12.1992'),
           (4, '�������� ������� �������������', '11.05.1992'),
           (4, '����������� ������� ��������',   '09.11.1992'),
           (4, '�������� ������� ����������',    '01.11.1992'),
           (5, '�������� ����� ������������',    '08.07.1995'),
           (5, '������ ������� ����������',      '02.11.1995'),
           (5, '������ ��������� �����������',   '07.05.1995'),
           (5, '�������� ������ ����������',     '04.06.1995'),
           (5, '����� ������� ����������',       '09.09.1995'),
           (5, '����� ��������� ���������',      '04.08.1995'),
           (6, '���������� ����� ����������',    '08.11.1994'),
           (6, '�������� ������ ��������',       '02.03.1994'),
           (6, '���������� ����� ����������',    '04.06.1994'),
           (6, '��������� ���������� ���������', '09.11.1994'),
           (6, '����� ��������� �������',        '04.07.1994'),
           (7, '����������� ����� ������������', '03.01.1993'),
           (7, '������� ���� ��������',          '12.09.1993'),
           (7, '��������� ������ ��������',      '12.06.1993'),
           (7, '���������� ��������� ����������','09.02.1993'),
           (7, '������� ������ ���������',       '04.07.1993'),
           (8, '������ ������� ���������',       '08.01.1992'),
           (8, '��������� ����� ����������',     '12.05.1992'),
           (8, '�������� ����� ����������',      '08.11.1992'),
           (8, '������� ������� ���������',      '12.03.1992'),
           (8, '����� �������� ���������',       '10.01.1992'),
           (8, '����� ���� ��������',            '12.07.1992'),
           (9, '�������� ����� �������������',   '10.08.1995'),
           (9, '���������� ������ ��������',     '02.05.1995'),
           (9, '������ ������� �������������',   '08.01.1995'),
           (9, '��������� ��������� ��������',   '11.09.1995'),
           (9, '������ ������� ��������',        '08.04.1995'),
           (9, '������� ������� �������������',  '09.06.1995'),
           (10, '������ ������� ������������',   '08.01.1994'),
           (10, '������ ������ ����������',      '11.09.1994'),
           (10, '����� ���� �������������',      '06.04.1994'),
           (10, '������� ������ ����������',     '12.08.1994'),
           (10, '���������� ������ ���������',   '05.01.1994'),
           (10, '������ ����� ����������',       '11.02.1994')           
insert into STUDENT (�������������_������,���, ����_��������)
    values (11, '��������� ��������� ����������','07.11.1993'),
           (11, '������ ������� ����������',     '04.06.1993'),
           (11, '������� ����� ����������',      '10.12.1993'),
           (11, '������� ������ ����������',     '04.07.1993'),
           (11, '������� ����� ���������',       '08.01.1993'),
           (11, '����� ������� ����������',      '02.09.1993'),
           (12, '���� ������ �����������',       '11.12.1995'),
           (12, '������� ���� �������������',    '10.06.1995'),
           (12, '��������� ���� ���������',      '09.08.1995'),
           (12, '����� ����� ���������',         '04.07.1995'),
           (12, '��������� ������ ����������',   '08.03.1995'),
           (12, '����� ����� ��������',          '12.09.1995'),
           (13, '������ ����� ������������',     '08.10.1994'),
           (13, '���������� ����� ����������',   '10.02.1994'),
           (13, '�������� ������� �������������','11.11.1994'),
           (13, '���������� ����� ����������',   '10.02.1994'),
           (13, '����������� ����� ��������',    '12.01.1994'),
           (14, '�������� ������� �������������','11.09.1993'),
           (14, '������ �������� ����������',    '01.12.1993'),
           (14, '���� ������� ����������',       '09.06.1993'),
           (14, '�������� ���������� ����������','05.01.1993'),
           (14, '����������� ����� ����������',  '01.07.1993'),
           (15, '������� ��������� ���������',   '07.04.1992'),
           (15, '������ �������� ���������',     '10.12.1992'),
           (15, '��������� ����� ����������',    '05.05.1992'),
           (15, '���������� ����� ������������', '11.01.1992'),
           (15, '�������� ����� ����������',     '04.06.1992'),
           (16, '����� ����� ����������',        '08.01.1994'),
           (16, '��������� ��������� ���������', '07.02.1994'),
           (16, '������ ������ �����������',     '12.06.1994'),
           (16, '������� ����� ��������',        '03.07.1994'),
           (16, '������ ������ ���������',       '04.07.1994'),
           (17, '������� ��������� ����������',  '08.11.1993'),
           (17, '������ ����� ����������',       '02.04.1993'),
           (17, '������ ���� ��������',          '03.06.1993'),
           (17, '������� ������ ���������',      '05.11.1993'),
           (17, '������ ������ �������������',   '03.07.1993'),
           (18, '��������� ����� ��������',      '08.01.1995'),
           (18, '���������� ��������� ���������','06.09.1995'),
           (18, '�������� ��������� ����������', '08.03.1995'),
           (18, '��������� ����� ��������',      '07.08.1995'),
           (18, '�������� ����� ����������',     '08.01.1995'),
           (18, '���������� ���� ���������',     '02.05.1995'),
           (19, '����� ������� ����������',      '08.06.1994'),
           (19, '��������� ����� ����������',    '08.07.1994'),
           (19, '���������� ����� ����������',   '03.10.1994'),
           (19, '���������� ����� ����������',   '02.10.1994'),
           (19, '��������� ���� ����������',     '01.10.1994'),
           (20, '�������� �������� ����������',  '07.03.1995'),
           (20, '��������� ������� ��������',    '03.09.1995'),
           (20, '�������� ����� ��������',       '07.04.1995'),
           (20, '������� ����� ���������',       '08.06.1995')







use ORL_BSTU;
create table PROGRESS
 ( ���_����������   char(10) foreign key (���_����������)
    references SUBJECT(���_����������),                
 ���_�������� integer  foreign key  (���_��������)       
                      references STUDENT(���_��������),        
 ����_�����������    date, 
 ������     integer check (������ between 1 and 10)
  )
insert into PROGRESS (���_����������,���_��������,����_�����������, ������)
    values ('����', 1000,  '01.10.2013',6),
           ('����', 1001,  '01.10.2013',8),
           ('����', 1002,  '01.10.2013',7),
           ('����', 1003,  '01.10.2013',5),
           ('����', 1005,  '01.10.2013',4)
insert into PROGRESS (���_����������,���_��������,����_�����������, ������)
    values   ('����', 1014,  '01.12.2013',5),
           ('����', 1015,  '01.12.2013',9),
           ('����', 1016,  '01.12.2013',5),
           ('����', 1017,  '01.12.2013',4)
insert into PROGRESS (���_����������,���_��������,����_�����������, ������)
    values ('��',   1018,  '06.5.2013',4),
           ('��',   1019,  '06.05.2013',7),
           ('��',   1020,  '06.05.2013',7),
           ('��',   1021,  '06.05.2013',9),
           ('��',   1022,  '06.05.2013',5),
           ('��',   1023,  '06.05.2013',6)
insert into PROGRESS (���_����������,���_��������,����_�����������, ������)
    values ('��',   1064,  '01.1.2013',6),
           ('��',   1065,  '01.1.2013',4),
           ('��',   1066,  '01.1.2013',9),
           ('��',   1067,  '01.1.2013',5),
           ('��',   1068,  '01.1.2013',8),
           ('��',   1069,  '01.1.2013',4)
insert into PROGRESS (���_����������,���_��������,����_�����������, ������)
    values ('��',   1055,  '01.1.2013',7),
           ('��',   1056,  '01.1.2013',8),
           ('��',   1057,  '01.1.2013',9),
           ('��',   1058,  '01.1.2013',4),
           ('��',   1059,  '01.1.2013',5)



