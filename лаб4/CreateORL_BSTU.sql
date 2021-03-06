Use master;
create database TMPORL_BSTU;
USE TMPORL_BSTU;
create table FACULTY
(
���_���������� char(10) not null,
constraint PK_FACULTY primary key(���_����������),
������������_���������� varchar(50) default '???',
)

insert into FACULTY   (���_����������,   ������������_���������� )
             values  ('����',   '����������� ���� � ����������');
insert into FACULTY   (���_����������,   ������������_���������� )
            values  ('����',   '���������� ���������� � �������');
insert into FACULTY   (���_����������,   ������������_���������� )
            values  ('���',     '����������������� ���������');
insert into FACULTY   (���_����������,   ������������_���������� )
            values  ('���',     '���������-������������� ���������');
insert into FACULTY   (���_����������,   ������������_���������� )
            values  ('����',    '���������� � ������� ������ ��������������');
insert into FACULTY   (���_����������,   ������������_���������� )
            values  ('���',     '���������� ������������ �������');
insert into FACULTY   (���_����������,   ������������_���������� )
            values  ('��',     '��������� �������������� ����������');


USE TMPORL_BSTU;
create table PROFESSION
(
���_������������� char(20) not null,
constraint PK_PROFESSION primary key(���_�������������),
���_���������� char(10) not null,
constraint FK_PROFESSION_FACULTY foreign key (���_����������)
references FACULTY(���_����������),
������������_������������� varchar(100) null,
������������ varchar(50) null,
)

insert into PROFESSION(���_����������, ���_�������������, ������������_�������������, ������������)    values    ('����',  '1-40 01 02',   '�������������� ������� � ����������', '�������-�����������-�������������' );
 insert into PROFESSION(���_����������, ���_�������������, ������������_�������������, ������������)    values    ('����',  '1-47 01 01', '������������ ����', '��������-��������' );
 insert into PROFESSION(���_����������, ���_�������������,  ������������_�������������, ������������)    values    ('����',  '1-36 06 01',  '��������������� ������������ � ��-����� ��������� ����������', '�������-��������������' );                     
 insert into PROFESSION(���_����������, ���_�������������,  ������������_�������������, ������������)  values    ('����',  '1-36 01 08',    '��������������� � ������������ ��-����� �� �������������� ����������', '�������-�������' );
 insert into PROFESSION(���_����������, ���_�������������,  ������������_�������������, ������������)      values    ('����',  '1-36 07 01',  '������ � �������� ���������� ����������� � ����������� ������������ ����������', '�������-�������' );
 insert into PROFESSION(���_����������, ���_�������������, ������������_�������������, ������������)  values    ('���',  '1-75 01 01',      '������ ���������', '������� ������� ���������' );
 insert into PROFESSION(���_����������, ���_�������������,  ������������_�������������, ������������)   values    ('���',  '1-75 02 01',   '������-�������� �������������', '����-��� ������-��������� �������������' );
 insert into PROFESSION(���_����������, ���_�������������,     ������������_�������������, ������������)   values    ('���',  '1-89 02 02',     '������ � ������������������', '�����-����� � ����� �������' );
 insert into PROFESSION(���_����������, ���_�������������, ������������_�������������, ������������)  values    ('���',  '1-25 01 07',  '��������� � ���������� �� �����������', '���������-��������' );
 insert into PROFESSION(���_����������, ���_�������������,  ������������_�������������, ������������)      values    ('���',  '1-25 01 08',    '������������� ����, ������ � �����', '���������' );                      
 insert into PROFESSION(���_����������, ���_�������������,     ������������_�������������, ������������)  values    ('����',  '1-36 05 01',   '������ � ������������ ������� ���-������', '�������-�������' );
 insert into PROFESSION(���_����������, ���_�������������,   ������������_�������������, ������������)   values    ('����',  '1-46 01 01',      '�������������� ����', '�������-��������' );
 insert into PROFESSION(���_����������, ���_�������������,     ������������_�������������, ������������)      values    ('���',  '1-48 01 02',  '���������� ���������� ������������ �������, ���������� � �������', '�������-�����-��������' );                
 insert into PROFESSION(���_����������, ���_�������������,   ������������_�������������, ������������)    values    ('���',  '1-48 01 05',    '���������� ���������� ����������� ���������', '�������-�����-��������' ); 
 insert into PROFESSION(���_����������, ���_�������������,    ������������_�������������, ������������)  values    ('���',  '1-54 01 03',   '������-���������� ������ � ������� �������� �������� ���������', '������� �� ������������' ); 


USE TMPORL_BSTU;
create table PULPIT
(
���_������� char(10) not null,
constraint PK_PULPIT primary key(���_�������),
������������_������� varchar(100) null,
���_���������� char(10) not null,
constraint FK_PULPIT_FACULTY foreign key (���_����������)
references FACULTY(���_����������),
)

insert into PULPIT   (���_�������, ������������_�������, ���_���������� )
  values  ('����', '�������������� ������ � ���������� ','����'  ),
   ('������','���������������� ������������ � ������ ��������� �����-����� ', '����'  ),
    ('��', '����������� ���������','����'  ),
     ('���', '�����������-������������ ���������', '����'  ),      
     ('��', '��������������� �����������','����'  ) ,                             
      ('��', '�����������','���')   ,       
    ('��', '������������','���')    ,
     ('��', '��������������','���') ,          
    ('�����', '���������� � ����������������','���') ,               
     ('����', '������ ������� � ������������','���') ,
     ('���', '������� � ������������������','���')  ,            
     ('������','������������ �������������� � ������-��������� �����-��������','���')  ,        
     ('��', '���������� ����', '����')                     ,     
     ('�����','������ ����� � ���������� �������������','����')  ,
     ('���','���������� �������������������� �����������', '����')   ,
  ('�����','���������� � ������� ������� �� ���������','����')    ,
  ('��', '������������ �����','���') ,
  ('��������','���������� ���������������� ������� � ����������� ��-�������� ����������','���'),
   ('���','���������� ����������� ���������','���')             ,
   ('�������','���������� �������������� ������� � ����� ���������� ���������� ','����') ,
   ('��������','�����, ���������� ����������������� ����������� � ����-������ ����������� �������',  '����')  ,
      ('�������','����� � ��������� ���������� � ���������� �����-������', '����'),
      ('�����','��������� � ��������� ���������� �����������','����')  ,                                             
  ('����',    '������������� ������ � ����������','���')   ,
    ('����',   '����������� � ��������� ������������������','���')   ,
     ('������', '����������, �������������� �����, ������� � ������', '���')    ; 


USE TMPORL_BSTU;
create table TEACHER
(
���_������������� char(10) not null,
primary key(���_�������������),
���_������������� varchar(100) null,
��� char(1) CHECK (��� in ('�','�')),
���_������� char(10) not null,
foreign key (���_�������)
references PULPIT(���_�������),
)

insert into  TEACHER    (���_�������������,   ���_�������������, ���, ���_������� )
                  Values ('����',    '������ �������� �������������', '�',  '����'),
                         ('�����',    '�������� ��������� ��������', '�', '����'),
                         ('�����',    '���������� ������� ����������', '�', '����'),
                         ('�����',    '�������� ������ ��������', '�', '����'),
                         ('���',     '����� ��������� ����������', '�', '����'),
                         ('���',     '��������� ����� ��������', '�', '����'),
                        ('���',     '����� ������� ��������', '�', '����'),
                         ('���',     '����� ������� �������������',  '�', '����'),                    
                         ('���',     '����� ����� �������������',  '�',   '����'),                                                                                           
                        ('������',   '���������� ��������� �������������', '�','������'),
                         ('���',     '��������� ������� �����������', '�', '������'),                      
                         ('������',   '����������� ��������� ��������', '�', '����'),
                         ('����',   '������� ��������� ����������', '�', '����'),
                         ('����',   '������ ������ ��������', '�', '��'),
                         ('����', '������� ������ ����������',  '�',  '������'),
                         ('���',     '���������� ������� ��������', '�', '������'),
                         ('������',   '���������� �������� ��������', '�', '��'),
                         ('���',      '��������� ���� �������������', '�', '��'),                       
                         ('���',   '������ ������ ���������� ', '�', '��'),                
                         ('�����',   '��������� �������� ���������', '�', '�����'), 
                         ('������',   '���������� �������� ����������', '�', '��'), 
                         ('�����',   '�������� ������ ����������', '�', '��'),
                         ('���',   '����� ������ ��������', '�', '�����'),
                         ('����',   '������ ������� ���������',  '�', '�������');                       


USE TMPORL_BSTU;
create table SUBJECT
(
���_���������� char(10) not null,
constraint PK_SUBJECT primary key(���_����������),
������������_���������� varchar(100) null unique,
���_������� char(10) not null,
constraint FK_SUBJECT_PULPIT foreign key (���_�������)
references PULPIT(���_�������),
)

insert into SUBJECT   (���_����������,   ������������_����������,        ���_������� )
                       Values ('����',   '������� ���������� ������ ������','����'),
                        ('��',     '���� ������','����'),
                        ('���',    '�������������� ����������','����'),
                        ('����',  '������ �������������� � ����������������','����'),
                        ('��',     '������������� ������ � ������������ ��������','����'),
                        ('���',    '���������������� ������� ����������','����'),
                        ('����',  '������������� ������ ��������� ����������', '����'),
                        ('���',     '�������������� �������������� ������','����'),
                        ('��',      '������������ ��������� ','����'),
            ('�����',   '��������. ������, �������� � �������� �����', '������'),
                        ('���',     '������������ �������������� �������', '����'),
                        ('���',     '����������� ��������. ������������', '������'),
                        ('��',   '���������� ����������', '����'),
                       ('��',   '�������������� ����������������','����'),
                ('����', '���������� ������ ���',  '����'),                   
                ('���',  '��������-��������������� ����������������', '����'),
                        ('��', '��������� ������������������','����'),
                        ('��', '������������� ������','����'),
                        ('������OO','�������� ������ ������ � ���� � ���. ������.','��'),
                        ('�������','������ ������-��������� � ������������� ���������',  '������'),
                        ('��', '���������� �������� ','��'),
                        ('��',    '�����������', '�����') ,
                        ('��',    '������������ �����', '��')   ,
                        ('���',    '���������� ��������� �������','��������') ,
                        ('���',    '������ ��������� ����','��'),
                        ('����',   '���������� � ������������ �������������', '�����') ,
                        ('����',   '���������� ���������� �������� ���������� ','�������'),
                        ('���',    '���������� ������������','��������') ;                                                                                                                                                          


USE TMPORL_BSTU;
create table AUDITORIUM_TYPE
(
���_����_��������� char(10) not null,
constraint PK_AUDITORIUM_TYPE primary key(���_����_���������),
������������_����_��������� varchar(30) null,
)

insert into AUDITORIUM_TYPE   (���_����_���������,  ������������_����_��������� )        
values ('��',            '����������'),
  ('��-�',          '������������ �����'),
  ('��-�',          '���������� � ���. ����������'),
  ('��-X',          '���������� �����������'),
   ('��-��',   '����. ������������ �����');


USE TMPORL_BSTU;
create table AUDITORIUM
(
���_��������� char(20) not null,
constraint PK_AUDITORIUM primary key(���_���������),
���_����_��������� char(10) not null,
constraint FK_AUDITORIUM_AUDITORIUM_TYPE foreign key (���_����_���������)
references AUDITORIUM_TYPE(���_����_���������),
����������� int,
������������_��������� varchar(50) null,
)

insert into  AUDITORIUM   (���_���������, ������������_���������,  ���_����_���������, �����������)   
Values  ('206-1', '206-1','��-�', 15),
  ('301-1',   '301-1', '��-�', 15),
  ('236-1',   '236-1', '��',   60),
 ('313-1',   '313-1', '��-�',   60),
  ('324-1',   '324-1', '��-�',   50),
  ('413-1',   '413-1', '��-�', 15),
  ('423-1',   '423-1', '��-�', 90),
 ('408-2',   '408-2', '��',  90),
  ('103-4',   '103-4', '��',  90),
 ('105-4',   '105-4', '��',  90),
  ('107-4',   '107-4', '��',  90),
  ('110-4',   '110-4', '��',  30),
  ('111-4',   '111-4', '��',  30),
  ('114-4',   '114-4', '��-�',  90 );

USE TMPORL_BSTU;
create table GROUPS
(
�������������_������ integer identity(1,1),
constraint PK_GROUPS primary key(�������������_������),
���_���������� char(10) not null,
constraint FK_GROUPS_FACULTY foreign key (���_����������)
references FACULTY(���_����������),
���_������������� char(20) not null,
constraint FK_GROUPS_PROFESSION foreign key (���_�������������)
references PROFESSION(���_�������������),
���_����������� smallint check (���_�����������<=YEAR(GETDATE())),
)

insert into GROUPS   (���_����������,  ���_�������������, ���_����������� )
         values ('����','1-40 01 02', 2013), --1
                ('����','1-40 01 02', 2012),
                ('����','1-40 01 02', 2011),
                ('����','1-40 01 02', 2010),
                ('����','1-47 01 01', 2013),---5 ��
                ('����','1-47 01 01', 2012),
                ('����','1-47 01 01', 2011),
                ('����','1-36 06 01', 2010),-----8 ��
                ('����','1-36 06 01', 2013),
                ('����','1-36 06 01', 2012),
                ('����','1-36 06 01', 2011),
                ('����','1-36 01 08', 2013),---12 ��                                                  
                ('����','1-36 01 08', 2012),
                ('����','1-36 07 01', 2011),
                ('����','1-36 07 01', 2010),
                ('���','1-48 01 02', 2012), ---16 �� 
                ('���','1-48 01 02', 2011),
                ('���','1-48 01 05', 2013),
                ('���','1-54 01 03', 2012),
                ('���','1-75 01 01', 2013),--20 ��      
                ('���','1-75 02 01', 2012),
                ('���','1-75 02 01', 2011),
                ('���','1-89 02 02', 2012),
                ('���','1-89 02 02', 2011),  
                ('����','1-36 05 01', 2013),
                ('����','1-36 05 01', 2012),
                ('����','1-46 01 01', 2012),--27 ��
                ('���','1-25 01 07', 2013), 
                ('���','1-25 01 07', 2012),     
                ('���','1-25 01 07', 2010),
                ('���','1-25 01 08', 2013),
                ('���','1-25 01 08', 2012) ---32 ��       


USE TMPORL_BSTU;
create table STUDENT
(
���_�������� int identity (1000,1),
constraint PK_STUDENT primary key(���_��������),
�������������_������ int not null,
constraint FK_STUDENT_GROUPS foreign key (�������������_������)
references GROUPS(�������������_������),
��� nvarchar(100),
����_�������� date,
�����_������� timestamp,
��������������_���������� xml null,
���������� varbinary(max) null,
)

insert into STUDENT (�������������_������,���, ����_��������)
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
           (20, '������� ����� ���������',       '08.06.1995');











    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
create database ORL_BSTU










    
    
    
    
USE ORL_BSTU;
create table FACULTY
(
���_���������� char(10) not null,
constraint PK_FACULTY primary key(���_����������),
������������_���������� varchar(50) default '???',
)

insert into FACULTY   (���_����������,   ������������_���������� )
             values  ('����',   '����������� ���� � ����������');
insert into FACULTY   (���_����������,   ������������_���������� )
            values  ('����',   '���������� ���������� � �������');
insert into FACULTY   (���_����������,   ������������_���������� )
            values  ('���',     '����������������� ���������');
insert into FACULTY   (���_����������,   ������������_���������� )
            values  ('���',     '���������-������������� ���������');
insert into FACULTY   (���_����������,   ������������_���������� )
            values  ('����',    '���������� � ������� ������ ��������������');
insert into FACULTY   (���_����������,   ������������_���������� )
            values  ('���',     '���������� ������������ �������');
insert into FACULTY   (���_����������,   ������������_���������� )
            values  ('��',     '��������� �������������� ����������');


USE ORL_BSTU;
create table PROFESSION
(
���_������������� char(20) not null,
constraint PK_PROFESSION primary key(���_�������������),
���_���������� char(10) not null,
constraint FK_PROFESSION_FACULTY foreign key (���_����������)
references FACULTY(���_����������),
������������_������������� varchar(100) null,
������������ varchar(50) null,
)

insert into PROFESSION(���_����������, ���_�������������, ������������_�������������, ������������)    values    ('����',  '1-40 01 02',   '�������������� ������� � ����������', '�������-�����������-�������������' );
 insert into PROFESSION(���_����������, ���_�������������, ������������_�������������, ������������)    values    ('����',  '1-47 01 01', '������������ ����', '��������-��������' );
 insert into PROFESSION(���_����������, ���_�������������,  ������������_�������������, ������������)    values    ('����',  '1-36 06 01',  '��������������� ������������ � ��-����� ��������� ����������', '�������-��������������' );                     
 insert into PROFESSION(���_����������, ���_�������������,  ������������_�������������, ������������)  values    ('����',  '1-36 01 08',    '��������������� � ������������ ��-����� �� �������������� ����������', '�������-�������' );
 insert into PROFESSION(���_����������, ���_�������������,  ������������_�������������, ������������)      values    ('����',  '1-36 07 01',  '������ � �������� ���������� ����������� � ����������� ������������ ����������', '�������-�������' );
 insert into PROFESSION(���_����������, ���_�������������, ������������_�������������, ������������)  values    ('���',  '1-75 01 01',      '������ ���������', '������� ������� ���������' );
 insert into PROFESSION(���_����������, ���_�������������,  ������������_�������������, ������������)   values    ('���',  '1-75 02 01',   '������-�������� �������������', '����-��� ������-��������� �������������' );
 insert into PROFESSION(���_����������, ���_�������������,     ������������_�������������, ������������)   values    ('���',  '1-89 02 02',     '������ � ������������������', '�����-����� � ����� �������' );
 insert into PROFESSION(���_����������, ���_�������������, ������������_�������������, ������������)  values    ('���',  '1-25 01 07',  '��������� � ���������� �� �����������', '���������-��������' );
 insert into PROFESSION(���_����������, ���_�������������,  ������������_�������������, ������������)      values    ('���',  '1-25 01 08',    '������������� ����, ������ � �����', '���������' );                      
 insert into PROFESSION(���_����������, ���_�������������,     ������������_�������������, ������������)  values    ('����',  '1-36 05 01',   '������ � ������������ ������� ���-������', '�������-�������' );
 insert into PROFESSION(���_����������, ���_�������������,   ������������_�������������, ������������)   values    ('����',  '1-46 01 01',      '�������������� ����', '�������-��������' );
 insert into PROFESSION(���_����������, ���_�������������,     ������������_�������������, ������������)      values    ('���',  '1-48 01 02',  '���������� ���������� ������������ �������, ���������� � �������', '�������-�����-��������' );                
 insert into PROFESSION(���_����������, ���_�������������,   ������������_�������������, ������������)    values    ('���',  '1-48 01 05',    '���������� ���������� ����������� ���������', '�������-�����-��������' ); 
 insert into PROFESSION(���_����������, ���_�������������,    ������������_�������������, ������������)  values    ('���',  '1-54 01 03',   '������-���������� ������ � ������� �������� �������� ���������', '������� �� ������������' ); 


USE ORL_BSTU;
create table PULPIT
(
���_������� char(10) not null,
constraint PK_PULPIT primary key(���_�������),
������������_������� varchar(100) null,
���_���������� char(10) not null,
constraint FK_PULPIT_FACULTY foreign key (���_����������)
references FACULTY(���_����������),
) on FG1;

insert into PULPIT   (���_�������, ������������_�������, ���_���������� )
  values  ('����', '�������������� ������ � ���������� ','����'  ),
   ('������','���������������� ������������ � ������ ��������� �����-����� ', '����'  ),
    ('��', '����������� ���������','����'  ),
     ('���', '�����������-������������ ���������', '����'  ),      
     ('��', '��������������� �����������','����'  ) ,                             
      ('��', '�����������','���')   ,       
    ('��', '������������','���')    ,
     ('��', '��������������','���') ,          
    ('�����', '���������� � ����������������','���') ,               
     ('����', '������ ������� � ������������','���') ,
     ('���', '������� � ������������������','���')  ,            
     ('������','������������ �������������� � ������-��������� �����-��������','���')  ,        
     ('��', '���������� ����', '����')                     ,     
     ('�����','������ ����� � ���������� �������������','����')  ,
     ('���','���������� �������������������� �����������', '����')   ,
  ('�����','���������� � ������� ������� �� ���������','����')    ,
  ('��', '������������ �����','���') ,
  ('��������','���������� ���������������� ������� � ����������� ��-�������� ����������','���'),
   ('���','���������� ����������� ���������','���')             ,
   ('�������','���������� �������������� ������� � ����� ���������� ���������� ','����') ,
   ('��������','�����, ���������� ����������������� ����������� � ����-������ ����������� �������',  '����')  ,
      ('�������','����� � ��������� ���������� � ���������� �����-������', '����'),
      ('�����','��������� � ��������� ���������� �����������','����')  ,                                             
  ('����',    '������������� ������ � ����������','���')   ,
    ('����',   '����������� � ��������� ������������������','���')   ,
     ('������', '����������, �������������� �����, ������� � ������', '���')    ; 


USE ORL_BSTU;
create table TEACHER
(
���_������������� char(10) not null,
primary key(���_�������������),
���_������������� varchar(100) null,
��� char(1) CHECK (��� in ('�','�')),
���_������� char(10) not null,
foreign key (���_�������)
references PULPIT(���_�������),
) on FG1;

insert into  TEACHER    (���_�������������,   ���_�������������, ���, ���_������� )
                  Values ('����',    '������ �������� �������������', '�',  '����'),
                         ('�����',    '�������� ��������� ��������', '�', '����'),
                         ('�����',    '���������� ������� ����������', '�', '����'),
                         ('�����',    '�������� ������ ��������', '�', '����'),
                         ('���',     '����� ��������� ����������', '�', '����'),
                         ('���',     '��������� ����� ��������', '�', '����'),
                        ('���',     '����� ������� ��������', '�', '����'),
                         ('���',     '����� ������� �������������',  '�', '����'),                    
                         ('���',     '����� ����� �������������',  '�',   '����'),                                                                                           
                        ('������',   '���������� ��������� �������������', '�','������'),
                         ('���',     '��������� ������� �����������', '�', '������'),                      
                         ('������',   '����������� ��������� ��������', '�', '����'),
                         ('����',   '������� ��������� ����������', '�', '����'),
                         ('����',   '������ ������ ��������', '�', '��'),
                         ('����', '������� ������ ����������',  '�',  '������'),
                         ('���',     '���������� ������� ��������', '�', '������'),
                         ('������',   '���������� �������� ��������', '�', '��'),
                         ('���',      '��������� ���� �������������', '�', '��'),                       
                         ('���',   '������ ������ ���������� ', '�', '��'),                
                         ('�����',   '��������� �������� ���������', '�', '�����'), 
                         ('������',   '���������� �������� ����������', '�', '��'), 
                         ('�����',   '�������� ������ ����������', '�', '��'),
                         ('���',   '����� ������ ��������', '�', '�����'),
                         ('����',   '������ ������� ���������',  '�', '�������');                       


USE ORL_BSTU;
create table SUBJECT
(
���_���������� char(10) not null,
constraint PK_SUBJECT primary key(���_����������),
������������_���������� varchar(100) null unique,
���_������� char(10) not null,
constraint FK_SUBJECT_PULPIT foreign key (���_�������)
references PULPIT(���_�������),
) on FG1;

insert into SUBJECT   (���_����������,   ������������_����������,        ���_������� )
                       Values ('����',   '������� ���������� ������ ������','����'),
                        ('��',     '���� ������','����'),
                        ('���',    '�������������� ����������','����'),
                        ('����',  '������ �������������� � ����������������','����'),
                        ('��',     '������������� ������ � ������������ ��������','����'),
                        ('���',    '���������������� ������� ����������','����'),
                        ('����',  '������������� ������ ��������� ����������', '����'),
                        ('���',     '�������������� �������������� ������','����'),
                        ('��',      '������������ ��������� ','����'),
            ('�����',   '��������. ������, �������� � �������� �����', '������'),
                        ('���',     '������������ �������������� �������', '����'),
                        ('���',     '����������� ��������. ������������', '������'),
                        ('��',   '���������� ����������', '����'),
                       ('��',   '�������������� ����������������','����'),
                ('����', '���������� ������ ���',  '����'),                   
                ('���',  '��������-��������������� ����������������', '����'),
                        ('��', '��������� ������������������','����'),
                        ('��', '������������� ������','����'),
                        ('������OO','�������� ������ ������ � ���� � ���. ������.','��'),
                        ('�������','������ ������-��������� � ������������� ���������',  '������'),
                        ('��', '���������� �������� ','��'),
                        ('��',    '�����������', '�����') ,
                        ('��',    '������������ �����', '��')   ,
                        ('���',    '���������� ��������� �������','��������') ,
                        ('���',    '������ ��������� ����','��'),
                        ('����',   '���������� � ������������ �������������', '�����') ,
                        ('����',   '���������� ���������� �������� ���������� ','�������'),
                        ('���',    '���������� ������������','��������') ;                                                                                                                                                          


USE ORL_BSTU;
create table AUDITORIUM_TYPE
(
���_����_��������� char(10) not null,
constraint PK_AUDITORIUM_TYPE primary key(���_����_���������),
������������_����_��������� varchar(30) null,
)

insert into AUDITORIUM_TYPE   (���_����_���������,  ������������_����_��������� )        
values ('��',            '����������'),
  ('��-�',          '������������ �����'),
  ('��-�',          '���������� � ���. ����������'),
  ('��-X',          '���������� �����������'),
   ('��-��',   '����. ������������ �����');


USE ORL_BSTU;
create table AUDITORIUM
(
���_��������� char(20) not null,
constraint PK_AUDITORIUM primary key(���_���������),
���_����_��������� char(10) not null,
constraint FK_AUDITORIUM_AUDITORIUM_TYPE foreign key (���_����_���������)
references AUDITORIUM_TYPE(���_����_���������),
����������� int,
������������_��������� varchar(50) null,
) on FG2;

insert into  AUDITORIUM   (���_���������, ������������_���������,  ���_����_���������, �����������)   
Values  ('206-1', '206-1','��-�', 15),
  ('301-1',   '301-1', '��-�', 15),
  ('236-1',   '236-1', '��',   60),
 ('313-1',   '313-1', '��-�',   60),
  ('324-1',   '324-1', '��-�',   50),
  ('413-1',   '413-1', '��-�', 15),
  ('423-1',   '423-1', '��-�', 90),
 ('408-2',   '408-2', '��',  90),
  ('103-4',   '103-4', '��',  90),
 ('105-4',   '105-4', '��',  90),
  ('107-4',   '107-4', '��',  90),
  ('110-4',   '110-4', '��',  30),
  ('111-4',   '111-4', '��',  30),
  ('114-4',   '114-4', '��-�',  90 );

USE ORL_BSTU;
create table GROUPS
(
�������������_������ integer identity(1,1),
constraint PK_GROUPS primary key(�������������_������),
���_���������� char(10) not null,
constraint FK_GROUPS_FACULTY foreign key (���_����������)
references FACULTY(���_����������),
���_������������� char(20) not null,
constraint FK_GROUPS_PROFESSION foreign key (���_�������������)
references PROFESSION(���_�������������),
���_����������� smallint check (���_�����������<=YEAR(GETDATE())),
) on FG1;

insert into GROUPS   (���_����������,  ���_�������������, ���_����������� )
         values ('����','1-40 01 02', 2013), --1
                ('����','1-40 01 02', 2012),
                ('����','1-40 01 02', 2011),
                ('����','1-40 01 02', 2010),
                ('����','1-47 01 01', 2013),---5 ��
                ('����','1-47 01 01', 2012),
                ('����','1-47 01 01', 2011),
                ('����','1-36 06 01', 2010),-----8 ��
                ('����','1-36 06 01', 2013),
                ('����','1-36 06 01', 2012),
                ('����','1-36 06 01', 2011),
                ('����','1-36 01 08', 2013),---12 ��                                                  
                ('����','1-36 01 08', 2012),
                ('����','1-36 07 01', 2011),
                ('����','1-36 07 01', 2010),
                ('���','1-48 01 02', 2012), ---16 �� 
                ('���','1-48 01 02', 2011),
                ('���','1-48 01 05', 2013),
                ('���','1-54 01 03', 2012),
                ('���','1-75 01 01', 2013),--20 ��      
                ('���','1-75 02 01', 2012),
                ('���','1-75 02 01', 2011),
                ('���','1-89 02 02', 2012),
                ('���','1-89 02 02', 2011),  
                ('����','1-36 05 01', 2013),
                ('����','1-36 05 01', 2012),
                ('����','1-46 01 01', 2012),--27 ��
                ('���','1-25 01 07', 2013), 
                ('���','1-25 01 07', 2012),     
                ('���','1-25 01 07', 2010),
                ('���','1-25 01 08', 2013),
                ('���','1-25 01 08', 2012) ---32 ��       


