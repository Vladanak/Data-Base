use master
go
create database ���������_MyBas
on primary
( name = N'���������_MyBase_mdf', filename = N'D:\�����\4 �������\��\���������_MyBase_mdf.mdf', 
   size = 10240Kb, maxsize=UNLIMITED, filegrowth=1024Kb),
( name = N'���������_MyBase_ndf', filename = N'D:\�����\4 �������\��\���������_MyBase_ndf.ndf', 
   size = 10240KB, maxsize=1Gb, filegrowth=25%),
filegroup FG1
( name = N'���������_MyBase_fg1_1', filename = N'D:\�����\4 �������\��\���������_MyBase_fgq-1.ndf', 
   size = 10240Kb, maxsize=1Gb, filegrowth=25%),
( name = N'���������_MyBase_fg1_2', filename = N'D:\�����\4 �������\��\���������_MyBase_fgq-2.ndf', 
   size = 10240Kb, maxsize=1Gb, filegrowth=25%)
log on
( name = N'���������_MyBase_log', filename=N'D:\�����\4 �������\��\���������_MyBase_log.ldf',       
   size=10240Kb,  maxsize=2048Gb, filegrowth=10%)
    go



