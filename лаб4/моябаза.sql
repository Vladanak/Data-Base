use master
go
create database Муравейко_MyBas
on primary
( name = N'Муравейко_MyBase_mdf', filename = N'D:\Учёба\4 семестр\Бд\Муравейко_MyBase_mdf.mdf', 
   size = 10240Kb, maxsize=UNLIMITED, filegrowth=1024Kb),
( name = N'Муравейко_MyBase_ndf', filename = N'D:\Учёба\4 семестр\Бд\Муравейко_MyBase_ndf.ndf', 
   size = 10240KB, maxsize=1Gb, filegrowth=25%),
filegroup FG1
( name = N'Муравейко_MyBase_fg1_1', filename = N'D:\Учёба\4 семестр\Бд\Муравейко_MyBase_fgq-1.ndf', 
   size = 10240Kb, maxsize=1Gb, filegrowth=25%),
( name = N'Муравейко_MyBase_fg1_2', filename = N'D:\Учёба\4 семестр\Бд\Муравейко_MyBase_fgq-2.ndf', 
   size = 10240Kb, maxsize=1Gb, filegrowth=25%)
log on
( name = N'Муравейко_MyBase_log', filename=N'D:\Учёба\4 семестр\Бд\Муравейко_MyBase_log.ldf',       
   size=10240Kb,  maxsize=2048Gb, filegrowth=10%)
    go



