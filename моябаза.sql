USE master;
CREATE database ORL_MyBase;
USE ORL_MyBase;
create table Водители
(
Код_водителя_ФИО nvarchar(3)
primary key(Код_водителя_ФИО),
Ф_И_О nvarchar(50),
Стаж int,
) on FG1;

create table Маршруты
(
Номер_маршрута int 
primary key(Номер_маршрута),
Дальность int,
Количество_дней_в_пути int,
Оплата real,
) on FG1;

create table Поездки
(
Номер_поездки int 
primary key(Номер_поездки),
Номер_маршрута int, 
foreign key (Номер_маршрута)
references Маршруты(Номер_маршрута),
Код_водителя_ФИО nvarchar(3)
foreign key (Код_водителя_ФИО) 
references Водители(Код_водителя_ФИО),
Дата_отправления date,
)

ALTER Table Водители ADD Дата_рождения date;

ALTER Table Водители DROP Column Дата_рождения;

INSERT into Водители (Код_водителя_ФИО, Ф_И_О, Стаж)
Values ('ВДП','Винокуров_Дмитрий_Петрович',4),
('ГАА','Ганжуров_Алексей_Александрович',3),
('ГМВ','Глудько_Мария_Викторовна',1),
('ОАМ','Орловская_Анна_Михайловна',4),
('ОМВ','Орловский_Михаил_Владиславович',7),
('ПВО','Павлюкевич_Владислав_Олегович',6),
('ПВС','Писарик_Владимир_Станиславович',8),
('СВД','Самок_Валерия_Дмитриевна',2),
('ЧОВ','Чадович_Олег_Викторович',5);


INSERT into Маршруты (Номер_маршрута, Дальность, Количество_дней_в_пути, Оплата)
Values (1,2030,4,5481000),
(2,3120,6,8424000),
(3,1250,3,3375000),
(4,680,2,1836000),
(5,856,2,2311200),
(6,1240,3,3348000),
(7,602,2,1625400),
(8,354,1,955800),
(9,780,2,2106000),
(10,1540,5,4158000);


INSERT into Поездки (Номер_поездки, Номер_маршрута, Код_водителя_ФИО, Дата_отправления)
Values (1,1,'ГАА','2015-02-25'),
(2,2,'ВДП','2015-02-26'),
(3,3,'СВД','2015-03-02'),
(4,4,'ГМВ','2015-02-27'),
(5,5,'ОАМ','2015-03-03'),
(6,6,'ОМВ','2015-03-02'),
(7,7,'ЧОВ','2015-02-28');

SELECT Дата_отправления, Номер_поездки From Поездки;

SELECT COUNT(*) From Поездки;

INSERT into Поездки (Номер_поездки, Номер_маршрута, Код_водителя_ФИО, Дата_отправления)
Values (19,9,'ГАА','2015-03-21');

DELETE from Поездки where Номер_поездки = '19';

UPDATE  Поездки set Номер_поездки = Номер_поездки+9;


        
-- 4 лаба

use master 
go
create database ORL_MyBase
on primary
( name = N'ORL_MyBase_mdf', filename = N'D:\УЧЁБА\БД\лаб4\ORL_MyBase_mdf.mdf', 
   size = 10240Kb, maxsize=UNLIMITED, filegrowth=1024Kb),
( name = N'ORL_MyBase_ndf', filename = N'D:\УЧЁБА\БД\лаб4\ORL_MyBase_ndf.ndf', 
   size = 10240KB, maxsize=1Gb, filegrowth=25%),
filegroup FG1
( name = N'ORL_MyBase_fg1_1', filename = N'D:\УЧЁБА\БД\лаб4\ORL_MyBase_fgq-1.ndf', 
   size = 10240Kb, maxsize=1Gb, filegrowth=25%),
( name = N'ORL_MyBase_fg1_2', filename = N'D:\УЧЁБА\БД\лаб4\ORL_MyBase_fgq-2.ndf', 
   size = 10240Kb, maxsize=1Gb, filegrowth=25%)
log on
( name = N'ORL_MyBase_log', filename=N'D:\УЧЁБА\БД\лаб4\ORL_MyBase_log.ldf',       
   size=10240Kb,  maxsize=2048Gb, filegrowth=10%)
    go



-- 5 лаба
use ORL_MyBase
SELECT  *  FROM  Маршруты;
SELECT Ф_И_О from Водители;
SELECT  Дата_отправления,Код_водителя_ФИО    from  Поездки where Дата_отправления='2015-02-25';
SELECT Distinct Количество_дней_в_пути FROM Маршруты;
SELECT Дата_отправления, Код_водителя_ФИО FROM Поездки Order by Дата_отправления Desc;
SELECT Distinct Дата_отправления, Код_водителя_ФИО from Поездки where Дата_отправления BETWEEN '2015-02-28' and '2015-03-02';
SELECT Distinct Ф_И_О, Стаж from Водители where Стаж IN ('1', '2', '3');
SELECT Ф_И_О, Стаж from Водители where Ф_И_О LIKE 'П%';

use ORL_MyBase;
CREATE table  #Водители
 (   ФИО nvarchar(100), День_рождение date );
    INSERT INTO #Водители (ФИО, День_рождение)
     values ( 'Хартанович Вадим Александрович','11.03.1991'),        
          ( 'Горбач Никита Владимирович ',   '07.12.1989'),
           ( 'Зыков Алексей Дмитриевич',  '12.10.1985'),
           ( 'Борисевич Николай Анатольевич', '09.11.1985'),
           ( 'Медведев Иван Андреевич',   '04.07.1979'),
           ( 'Шенец Михаил Викторович',   '08.01.1968'),
           ('Шитик Денис Игоревич',        '02.08.1987')    
    SELECT  * FROM #Водители;
    SELECT  ФИО, День_рождение  from  #Водители where ФИО Like 'Ш%';








-- 6 лаба
SELECT Водители.Ф_И_О, Поездки.Дата_отправления 
  From  Водители Inner Join Поездки
  On Водители.Код_водителя_ФИО = Поездки.Код_водителя_ФИО;

SELECT Водители.Ф_И_О, Поездки.Дата_отправления 
  From  Водители Inner Join Поездки
  On Водители.Код_водителя_ФИО = Поездки.Код_водителя_ФИО
    And   Водители.Ф_И_О  Like  '%Александр%';

  SELECT Водители.Ф_И_О, Поездки.Дата_отправления 
  From  Водители, Поездки
  Where Водители.Код_водителя_ФИО = Поездки.Код_водителя_ФИО;



SELECT Водители.Ф_И_О, Маршруты.Оплата, Поездки.Дата_отправления
FROM (Водители Inner join Поездки ON Водители.Код_водителя_ФИО=Поездки.Код_водителя_ФИО)
Inner join Маршруты ON Поездки.Номер_маршрута=Маршруты.Номер_маршрута;




SELECT 
Водители.Ф_И_О, Водители.Стаж, Маршруты.Оплата, Поездки.Дата_отправления
FROM (Водители Inner join Поездки ON Водители.Код_водителя_ФИО=Поездки.Код_водителя_ФИО)
Inner join Маршруты ON Поездки.Номер_маршрута=Маршруты.Номер_маршрута
ORDER BY 
(Case when (Водители.Стаж=7) then 1
when (Водители.Стаж=5) then 2
else 3
end);



SELECT Водители.Ф_И_О, Поездки.Дата_отправления
  From  Водители FULL Join Поездки
  On Водители.Код_водителя_ФИО = Поездки.Код_водителя_ФИО;

SELECT Водители.Ф_И_О, Поездки.Дата_отправления
  From  Водители CROSS Join Поездки
  Where Водители.Код_водителя_ФИО = Поездки.Код_водителя_ФИО;








-- 7 лаба

use ORL_MyBase


SELECT   Поездки.Дата_отправления,Маршруты.Количество_дней_в_пути,Водители.Ф_И_О 
FROM Поездки,Маршруты,Водители
 Where Поездки.Номер_маршрута=Маршруты.Номер_маршрута and
  Ф_И_О In (Select Ф_И_О  FROM  Водители    
        Where (Ф_И_О Like '%Влад%')  )
        


SELECT distinct Количество_дней_в_пути,Оплата from  Маршруты a
where  Дальность = (select top(1) Дальность  from Маршруты aa
where aa.Количество_дней_в_пути = a.Количество_дней_в_пути )
order by  Оплата desc       
       
       



-- 8 лаба

use ORL_MyBase

SELECT MAX(Стаж) [Максимальный стаж],
  MIN(Стаж) [Минимальный стаж],
  AVG(Стаж) [Средний стаж]
  FROM Водители



SELECT в.Ф_И_О, AVG(в.Стаж) Стаж
FROM Водители в
WHERE в.Стаж IN ('4')
    GROUP BY в.Ф_И_О, в.Код_водителя_ФИО


SELECT в.Ф_И_О, AVG(в.Стаж) Стаж
FROM Водители в
WHERE в.Стаж IN ('4')
    GROUP BY ROLLUP (в.Ф_И_О, в.Код_водителя_ФИО);


  SELECT в.Ф_И_О, AVG(в.Стаж) Стаж
FROM Водители в
WHERE в.Стаж IN ('4')
    GROUP BY CUBE (в.Ф_И_О, в.Код_водителя_ФИО);
       
       

       
SELECT в.Ф_И_О, AVG(в.Стаж) Стаж
FROM Водители в
WHERE в.Стаж IN ('4')
    GROUP BY в.Ф_И_О, в.Код_водителя_ФИО
UNION ALL --объединение
    SELECT в.Ф_И_О, AVG(в.Стаж) Стаж
FROM Водители в
WHERE в.Стаж IN ('8')
    GROUP BY в.Ф_И_О, в.Код_водителя_ФИО
    
    
    
    
SELECT в.Ф_И_О, AVG(в.Стаж) Стаж
FROM Водители в
WHERE в.Стаж IN ('4')
    GROUP BY в.Ф_И_О, в.Код_водителя_ФИО
INTERSECT -- пересечение
    SELECT в.Ф_И_О, AVG(в.Стаж) Стаж
FROM Водители в
WHERE в.Стаж IN ('8')
    GROUP BY в.Ф_И_О, в.Код_водителя_ФИО
    
    
    

    
    SELECT в.Ф_И_О, AVG(в.Стаж) Стаж
FROM Водители в
WHERE в.Стаж IN ('4')
    GROUP BY в.Ф_И_О, в.Код_водителя_ФИО
EXCEPT -- разность
    SELECT в.Ф_И_О, AVG(в.Стаж) Стаж
FROM Водители в
WHERE в.Стаж IN ('8')
    GROUP BY в.Ф_И_О, в.Код_водителя_ФИО
    
    
    
SELECT в.Ф_И_О, AVG(в.Стаж) Стаж
FROM Водители в
WHERE в.Стаж IN ('8')
    GROUP BY в.Ф_И_О, в.Код_водителя_ФИО
EXCEPT -- разность
    SELECT в.Ф_И_О, AVG(в.Стаж) Стаж
FROM Водители в
WHERE в.Стаж IN ('4')
    GROUP BY в.Ф_И_О, в.Код_водителя_ФИО
    
    
    
-- 9 лаба

use ORL_MyBase

CREATE VIEW 	[Водитель]
	       as select Код_водителя_ФИО [Код], 
                                Ф_И_О [Имя водителя],
                                Стаж from  Водители;
                                
                                
alter VIEW Водитель
	as select TOP 150 Ф_И_О, Код_водителя_ФИО, Стаж  from Водители
	    ORDER BY  Стаж;    
	    
	    
CREATE VIEW [Рейсы]
as SELECT Водители.Ф_И_О Водитель, Маршруты.Оплата, Маршруты.Количество_дней_в_пути [Дни в пути], Поездки.Дата_отправления [Отправление]
FROM (Водители Inner join Поездки ON Водители.Код_водителя_ФИО=Поездки.Код_водителя_ФИО)
Inner join Маршруты ON Поездки.Номер_маршрута=Маршруты.Номер_маршрута;



-- 10 лаба

use ORL_MyBase
 
 
 DECLARE @n int=(select COUNT(*) From Водители);
IF (select COUNT(*) From Водители)>5
print 'Количество работников больше 5. Количество='+cast(@n as varchar(10));
ELSE
print 'Количество работников меньше 5. Количество='+cast(@n as varchar(10));


SELECT  CASE 
                when Стаж between 0 and 2 then 'практикант' 
                when Стаж between 3 and 6 then 'квалифицированный рабочий'
                else   'мастер'
                end  Стаж , count(*) [Количество] 
           FROM dbo.Водители
           GROUP BY CASE 
                when Стаж between 0 and 2 then 'практикант' 
                when Стаж between 3 and 6 then 'квалифицированный рабочий'
                else   'мастер'
                end
                
                
                
                
-- 11 лаба

use ORL_MyBase

exec SP_HELPINDEX'Водители';

SELECT 
Водители.Ф_И_О, Водители.Стаж, Маршруты.Оплата, Поездки.Дата_отправления
FROM (Водители Inner join Поездки ON Водители.Код_водителя_ФИО=Поездки.Код_водителя_ФИО)
Inner join Маршруты ON Поездки.Номер_маршрута=Маршруты.Номер_маршрута
ORDER BY 
(Case when (Водители.Стаж=7) then 1
when (Водители.Стаж=5) then 2
else 3
end);

CREATE nonclustered index st on Водители(Ф_И_О,Стаж)
DROP index st on Водители

--12 лаба

DECLARE @kaf char(20), @k char(300)=' ';  
DECLARE dis CURSOR local for select Дата_отправления from Поездки
	OPEN dis;	  
	FETCH  dis into @kaf;   
	print   'Рейсы';   
	while @@fetch_status = 0                                     
          begin 
             set @k = rtrim(@kaf)+', '+@k;         
             FETCH  dis into @kaf; 
          end;   
      print @k;        
  CLOSE  dis;
  
  
  

-- 13 лаба

go
 begin try
	 begin transaction                 -- начало  явной транзакции
	  	   	   delete Поездки where Код_водителя_ФИО='ОМВ';

	   delete Водители where Код_водителя_ФИО='ОМВ';

	   insert Водители values ('ОЯВ', 'Орловская Яна Владимировна',1  ),
	                         ('ВАВ', 'Винокурова Анастасия Владимировна',1  );
	   commit transaction;               -- фиксация транзакции
	end try
	begin catch
	    print 'ошибка: '+ case 
	      when error_number() = 547 and patindex('%FK_Поездки%', error_message()) > 0
          then 'нет такого водителя' 
          when error_number() = 2627 and patindex('%PK_Водители%', error_message()) > 0
          then 'дублирование кода информации' 
          else 'неизвестная ошибка: '+ cast(error_number() as  varchar(5))+ error_message()  
	  end; 
	 if @@trancount > 0 rollback transaction ; -- откат транзакции	  
     end catch;
     
     
-- 14 лаба

create procedure PVODITELI
as begin
 select * from Водители;
end

exec PVODITELI; -- вызов процедуры

alter procedure PVODITELI
 @p int=4
as begin
 select * from Водители where Стаж=@p;
end;

exec PVODITELI;



-- 15 лаба

create function COUNT_VODITELI(@vod varchar(20)) returns int  -- скалярная функция
    as begin  declare @rc int = 0;
    set @rc = (select count(Код_водителя_ФИО) from Маршруты m  join  Поездки p on m.Номер_маршрута=p.Номер_маршрута
                   where m.Номер_маршрута = @vod) ;  
	 return @rc;          
	end;  
	
drop function COUNT_VODITELI

declare @c int=dbo.COUNT_VODITELI('7');
print 'Количество водителей с номером маршрута 7:'+cast(@c as varchar(4));

print 'Количество водителей с номером маршрута 7:'+cast(dbo.COUNT_VODITELI('7') as varchar(4));



create function dbo.TABLPOIZDKI() returns table -- табличная функция
       as return select Номер_маршрута, Дата_отправления
       from Поездки;
 
select * from TABLPOIZDKI()


-- 16 лаба

create table TR_MARSHRUTS
( ID int identity,
  STMT varchar(20) check (STMT in ('INS','DEL','UPD')),
  TRNAME varchar(50),
  CC varchar(300) )
  
 create trigger TR_MARSHRUTS_INS 
 on Маршруты after insert
 as declare @a1 int, @a2 int, @a3 int, @a4 real, @in varchar(300);
 print 'Insert operation';
 set @a1=(select[Номер_маршрута] from INSERTED);
 set @a2=(select[Дальность] from INSERTED);
 set @a3=(select[Количество_дней_в_пути] from INSERTED);
 set @a4=(select[Оплата] from INSERTED);
 set @in=@a1+''+@a2+''+@a3+''+@a4;
 insert into TR_MARSHRUTS(STMT,TRNAME,CC)
  values('INS','TR_MARSHRUTS_INS',@in);
  return;


  go
  insert into Маршруты(Номер_маршрута,Дальность,Количество_дней_в_пути,Оплата)
   values(11,230,4,3250600);
  
  
  
   
  select * from TR_MARSHRUTS
  

  select * from Маршруты
  

  drop table TR_MARSHRUTS
  
  
  
  -- 17 лаба
  
 use Muraveyko_MyBase

 select * from Маршруты

  select * from Маршруты where Количество_дней_в_пути='4' for xml path('Дальность'),root('Количество_дней_в_пути'), elements;

select * from Маршруты where Количество_дней_в_пути='4' for xml raw

select * from Маршруты where Количество_дней_в_пути='4' for xml auto

select v.Ф_И_О, p.Дата_отправления
from Водители v  join Поездки p
 on v.Код_водителя_ФИО=p.Код_водителя_ФИО
where p.Дата_отправления in ('2015-02-26','2015-02-25') order by p.Дата_отправления
for xml auto