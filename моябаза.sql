USE master;
CREATE database ORL_MyBase;
USE ORL_MyBase;
create table ��������
(
���_��������_��� nvarchar(3)
primary key(���_��������_���),
�_�_� nvarchar(50),
���� int,
) on FG1;

create table ��������
(
�����_�������� int 
primary key(�����_��������),
��������� int,
����������_����_�_���� int,
������ real,
) on FG1;

create table �������
(
�����_������� int 
primary key(�����_�������),
�����_�������� int, 
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
(2,3120,6,8424000),
(3,1250,3,3375000),
(4,680,2,1836000),
(5,856,2,2311200),
(6,1240,3,3348000),
(7,602,2,1625400),
(8,354,1,955800),
(9,780,2,2106000),
(10,1540,5,4158000);


INSERT into ������� (�����_�������, �����_��������, ���_��������_���, ����_�����������)
Values (1,1,'���','2015-02-25'),
(2,2,'���','2015-02-26'),
(3,3,'���','2015-03-02'),
(4,4,'���','2015-02-27'),
(5,5,'���','2015-03-03'),
(6,6,'���','2015-03-02'),
(7,7,'���','2015-02-28');

SELECT ����_�����������, �����_������� From �������;

SELECT COUNT(*) From �������;

INSERT into ������� (�����_�������, �����_��������, ���_��������_���, ����_�����������)
Values (19,9,'���','2015-03-21');

DELETE from ������� where �����_������� = '19';

UPDATE  ������� set �����_������� = �����_�������+9;


        
-- 4 ����

use master 
go
create database ORL_MyBase
on primary
( name = N'ORL_MyBase_mdf', filename = N'D:\�ר��\��\���4\ORL_MyBase_mdf.mdf', 
   size = 10240Kb, maxsize=UNLIMITED, filegrowth=1024Kb),
( name = N'ORL_MyBase_ndf', filename = N'D:\�ר��\��\���4\ORL_MyBase_ndf.ndf', 
   size = 10240KB, maxsize=1Gb, filegrowth=25%),
filegroup FG1
( name = N'ORL_MyBase_fg1_1', filename = N'D:\�ר��\��\���4\ORL_MyBase_fgq-1.ndf', 
   size = 10240Kb, maxsize=1Gb, filegrowth=25%),
( name = N'ORL_MyBase_fg1_2', filename = N'D:\�ר��\��\���4\ORL_MyBase_fgq-2.ndf', 
   size = 10240Kb, maxsize=1Gb, filegrowth=25%)
log on
( name = N'ORL_MyBase_log', filename=N'D:\�ר��\��\���4\ORL_MyBase_log.ldf',       
   size=10240Kb,  maxsize=2048Gb, filegrowth=10%)
    go



-- 5 ����
use ORL_MyBase
SELECT  *  FROM  ��������;
SELECT �_�_� from ��������;
SELECT  ����_�����������,���_��������_���    from  ������� where ����_�����������='2015-02-25';
SELECT Distinct ����������_����_�_���� FROM ��������;
SELECT ����_�����������, ���_��������_��� FROM ������� Order by ����_����������� Desc;
SELECT Distinct ����_�����������, ���_��������_��� from ������� where ����_����������� BETWEEN '2015-02-28' and '2015-03-02';
SELECT Distinct �_�_�, ���� from �������� where ���� IN ('1', '2', '3');
SELECT �_�_�, ���� from �������� where �_�_� LIKE '�%';

use ORL_MyBase;
CREATE table  #��������
 (   ��� nvarchar(100), ����_�������� date );
    INSERT INTO #�������� (���, ����_��������)
     values ( '���������� ����� �������������','11.03.1991'),        
          ( '������ ������ ������������ ',   '07.12.1989'),
           ( '����� ������� ����������',  '12.10.1985'),
           ( '��������� ������� �����������', '09.11.1985'),
           ( '�������� ���� ���������',   '04.07.1979'),
           ( '����� ������ ����������',   '08.01.1968'),
           ('����� ����� ��������',        '02.08.1987')    
    SELECT  * FROM #��������;
    SELECT  ���, ����_��������  from  #�������� where ��� Like '�%';








-- 6 ����
SELECT ��������.�_�_�, �������.����_����������� 
  From  �������� Inner Join �������
  On ��������.���_��������_��� = �������.���_��������_���;

SELECT ��������.�_�_�, �������.����_����������� 
  From  �������� Inner Join �������
  On ��������.���_��������_��� = �������.���_��������_���
    And   ��������.�_�_�  Like  '%���������%';

  SELECT ��������.�_�_�, �������.����_����������� 
  From  ��������, �������
  Where ��������.���_��������_��� = �������.���_��������_���;



SELECT ��������.�_�_�, ��������.������, �������.����_�����������
FROM (�������� Inner join ������� ON ��������.���_��������_���=�������.���_��������_���)
Inner join �������� ON �������.�����_��������=��������.�����_��������;




SELECT 
��������.�_�_�, ��������.����, ��������.������, �������.����_�����������
FROM (�������� Inner join ������� ON ��������.���_��������_���=�������.���_��������_���)
Inner join �������� ON �������.�����_��������=��������.�����_��������
ORDER BY 
(Case when (��������.����=7) then 1
when (��������.����=5) then 2
else 3
end);



SELECT ��������.�_�_�, �������.����_�����������
  From  �������� FULL Join �������
  On ��������.���_��������_��� = �������.���_��������_���;

SELECT ��������.�_�_�, �������.����_�����������
  From  �������� CROSS Join �������
  Where ��������.���_��������_��� = �������.���_��������_���;








-- 7 ����

use ORL_MyBase


SELECT   �������.����_�����������,��������.����������_����_�_����,��������.�_�_� 
FROM �������,��������,��������
 Where �������.�����_��������=��������.�����_�������� and
  �_�_� In (Select �_�_�  FROM  ��������    
        Where (�_�_� Like '%����%')  )
        


SELECT distinct ����������_����_�_����,������ from  �������� a
where  ��������� = (select top(1) ���������  from �������� aa
where aa.����������_����_�_���� = a.����������_����_�_���� )
order by  ������ desc       
       
       



-- 8 ����

use ORL_MyBase

SELECT MAX(����) [������������ ����],
  MIN(����) [����������� ����],
  AVG(����) [������� ����]
  FROM ��������



SELECT �.�_�_�, AVG(�.����) ����
FROM �������� �
WHERE �.���� IN ('4')
    GROUP BY �.�_�_�, �.���_��������_���


SELECT �.�_�_�, AVG(�.����) ����
FROM �������� �
WHERE �.���� IN ('4')
    GROUP BY ROLLUP (�.�_�_�, �.���_��������_���);


  SELECT �.�_�_�, AVG(�.����) ����
FROM �������� �
WHERE �.���� IN ('4')
    GROUP BY CUBE (�.�_�_�, �.���_��������_���);
       
       

       
SELECT �.�_�_�, AVG(�.����) ����
FROM �������� �
WHERE �.���� IN ('4')
    GROUP BY �.�_�_�, �.���_��������_���
UNION ALL --�����������
    SELECT �.�_�_�, AVG(�.����) ����
FROM �������� �
WHERE �.���� IN ('8')
    GROUP BY �.�_�_�, �.���_��������_���
    
    
    
    
SELECT �.�_�_�, AVG(�.����) ����
FROM �������� �
WHERE �.���� IN ('4')
    GROUP BY �.�_�_�, �.���_��������_���
INTERSECT -- �����������
    SELECT �.�_�_�, AVG(�.����) ����
FROM �������� �
WHERE �.���� IN ('8')
    GROUP BY �.�_�_�, �.���_��������_���
    
    
    

    
    SELECT �.�_�_�, AVG(�.����) ����
FROM �������� �
WHERE �.���� IN ('4')
    GROUP BY �.�_�_�, �.���_��������_���
EXCEPT -- ��������
    SELECT �.�_�_�, AVG(�.����) ����
FROM �������� �
WHERE �.���� IN ('8')
    GROUP BY �.�_�_�, �.���_��������_���
    
    
    
SELECT �.�_�_�, AVG(�.����) ����
FROM �������� �
WHERE �.���� IN ('8')
    GROUP BY �.�_�_�, �.���_��������_���
EXCEPT -- ��������
    SELECT �.�_�_�, AVG(�.����) ����
FROM �������� �
WHERE �.���� IN ('4')
    GROUP BY �.�_�_�, �.���_��������_���
    
    
    
-- 9 ����

use ORL_MyBase

CREATE VIEW 	[��������]
	       as select ���_��������_��� [���], 
                                �_�_� [��� ��������],
                                ���� from  ��������;
                                
                                
alter VIEW ��������
	as select TOP 150 �_�_�, ���_��������_���, ����  from ��������
	    ORDER BY  ����;    
	    
	    
CREATE VIEW [�����]
as SELECT ��������.�_�_� ��������, ��������.������, ��������.����������_����_�_���� [��� � ����], �������.����_����������� [�����������]
FROM (�������� Inner join ������� ON ��������.���_��������_���=�������.���_��������_���)
Inner join �������� ON �������.�����_��������=��������.�����_��������;



-- 10 ����

use ORL_MyBase
 
 
 DECLARE @n int=(select COUNT(*) From ��������);
IF (select COUNT(*) From ��������)>5
print '���������� ���������� ������ 5. ����������='+cast(@n as varchar(10));
ELSE
print '���������� ���������� ������ 5. ����������='+cast(@n as varchar(10));


SELECT  CASE 
                when ���� between 0 and 2 then '����������' 
                when ���� between 3 and 6 then '����������������� �������'
                else   '������'
                end  ���� , count(*) [����������] 
           FROM dbo.��������
           GROUP BY CASE 
                when ���� between 0 and 2 then '����������' 
                when ���� between 3 and 6 then '����������������� �������'
                else   '������'
                end
                
                
                
                
-- 11 ����

use ORL_MyBase

exec SP_HELPINDEX'��������';

SELECT 
��������.�_�_�, ��������.����, ��������.������, �������.����_�����������
FROM (�������� Inner join ������� ON ��������.���_��������_���=�������.���_��������_���)
Inner join �������� ON �������.�����_��������=��������.�����_��������
ORDER BY 
(Case when (��������.����=7) then 1
when (��������.����=5) then 2
else 3
end);

CREATE nonclustered index st on ��������(�_�_�,����)
DROP index st on ��������

--12 ����

DECLARE @kaf char(20), @k char(300)=' ';  
DECLARE dis CURSOR local for select ����_����������� from �������
	OPEN dis;	  
	FETCH  dis into @kaf;   
	print   '�����';   
	while @@fetch_status = 0                                     
          begin 
             set @k = rtrim(@kaf)+', '+@k;         
             FETCH  dis into @kaf; 
          end;   
      print @k;        
  CLOSE  dis;
  
  
  

-- 13 ����

go
 begin try
	 begin transaction                 -- ������  ����� ����������
	  	   	   delete ������� where ���_��������_���='���';

	   delete �������� where ���_��������_���='���';

	   insert �������� values ('���', '��������� ��� ������������',1  ),
	                         ('���', '���������� ��������� ������������',1  );
	   commit transaction;               -- �������� ����������
	end try
	begin catch
	    print '������: '+ case 
	      when error_number() = 547 and patindex('%FK_�������%', error_message()) > 0
          then '��� ������ ��������' 
          when error_number() = 2627 and patindex('%PK_��������%', error_message()) > 0
          then '������������ ���� ����������' 
          else '����������� ������: '+ cast(error_number() as  varchar(5))+ error_message()  
	  end; 
	 if @@trancount > 0 rollback transaction ; -- ����� ����������	  
     end catch;
     
     
-- 14 ����

create procedure PVODITELI
as begin
 select * from ��������;
end

exec PVODITELI; -- ����� ���������

alter procedure PVODITELI
 @p int=4
as begin
 select * from �������� where ����=@p;
end;

exec PVODITELI;



-- 15 ����

create function COUNT_VODITELI(@vod varchar(20)) returns int  -- ��������� �������
    as begin  declare @rc int = 0;
    set @rc = (select count(���_��������_���) from �������� m  join  ������� p on m.�����_��������=p.�����_��������
                   where m.�����_�������� = @vod) ;  
	 return @rc;          
	end;  
	
drop function COUNT_VODITELI

declare @c int=dbo.COUNT_VODITELI('7');
print '���������� ��������� � ������� �������� 7:'+cast(@c as varchar(4));

print '���������� ��������� � ������� �������� 7:'+cast(dbo.COUNT_VODITELI('7') as varchar(4));



create function dbo.TABLPOIZDKI() returns table -- ��������� �������
       as return select �����_��������, ����_�����������
       from �������;
 
select * from TABLPOIZDKI()


-- 16 ����

create table TR_MARSHRUTS
( ID int identity,
  STMT varchar(20) check (STMT in ('INS','DEL','UPD')),
  TRNAME varchar(50),
  CC varchar(300) )
  
 create trigger TR_MARSHRUTS_INS 
 on �������� after insert
 as declare @a1 int, @a2 int, @a3 int, @a4 real, @in varchar(300);
 print 'Insert operation';
 set @a1=(select[�����_��������] from INSERTED);
 set @a2=(select[���������] from INSERTED);
 set @a3=(select[����������_����_�_����] from INSERTED);
 set @a4=(select[������] from INSERTED);
 set @in=@a1+''+@a2+''+@a3+''+@a4;
 insert into TR_MARSHRUTS(STMT,TRNAME,CC)
  values('INS','TR_MARSHRUTS_INS',@in);
  return;


  go
  insert into ��������(�����_��������,���������,����������_����_�_����,������)
   values(11,230,4,3250600);
  
  
  
   
  select * from TR_MARSHRUTS
  

  select * from ��������
  

  drop table TR_MARSHRUTS
  
  
  
  -- 17 ����
  
 use Muraveyko_MyBase

 select * from ��������

  select * from �������� where ����������_����_�_����='4' for xml path('���������'),root('����������_����_�_����'), elements;

select * from �������� where ����������_����_�_����='4' for xml raw

select * from �������� where ����������_����_�_����='4' for xml auto

select v.�_�_�, p.����_�����������
from �������� v  join ������� p
 on v.���_��������_���=p.���_��������_���
where p.����_����������� in ('2015-02-26','2015-02-25') order by p.����_�����������
for xml auto