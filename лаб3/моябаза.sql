USE master;
CREATE database MikhnyukAV_MyBase;
create table ��������
(
���_��������_��� nvarchar(3)
primary key(���_��������_���),
�_�_� nvarchar(50),
���� int,
)

create table ��������
(
�����_�������� int 
primary key(�����_��������),
��������� int,
����������_����_�_���� int,
������ real,
)

create table �������
(
�����_������� int 
primary key(�����_�������),
�����_�������� int 
foreign key (�����_��������)
references ��������(�����_��������),
���_��������_��� nvarchar(3)
foreign key (���_��������_���) 
references ��������(���_��������_���),
����_����������� date,
)

ALTER Table �������� ADD ����_�������� date;

ALTER Table �������� DROP Column ����_��������;

INSERT into �������� (���_��������_���, �_�_�, ����)
Values ('���','���������_�������_��������',4),
('���','��������_�������_�������������',3),
('���','�������_�����_����������',1),
('���','���������_����_����������',4),
('���','���������_������_�������������',7),
('���','����������_���������_��������',6),
('���','�������_��������_�������������',8),
('���','�����_�������_����������',2),
('���','�������_����_����������',5);


INSERT into �������� (�����_��������, ���������, ����������_����_�_����, ������)
Values (1,2030,4,5481000),
(2,3120,4,8424000),
(3,1250,4,3375000),
(4,680,4,1836000),
(5,856,4,2311200),
(6,1240,4,3348000),
(7,602,4,1625400),
(8,354,4,955800),
(9,780,4,2106000),
(10,1540,4,4158000);


INSERT into ������� (�����_�������, �����_��������, ���_��������_���, ����_�����������)
Values (1,1,'���','2016-02-25'),
(2,2,'���','2016-02-26'),
(3,3,'���','2016-03-02'),
(4,4,'���','2016-02-27'),
(5,5,'���','2016-03-03'),
(6,6,'���','2016-03-02'),
(7,7,'���','2016-02-28'),
(8,8,'���','2016-03-05'),
(9,9,'���','2016-03-04');

SELECT ����_�����������, �����_������� From �������;

SELECT COUNT(*) From �������;

INSERT into ������� (�����_�������, �����_��������, ���_��������_���, ����_�����������)
Values (19,9,'���','2016-03-21');

DELETE from ������� where �����_������� = '19';

UPDATE  ������� set �����_������� = �����_�������+9;


        





