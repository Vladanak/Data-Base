Use master;
create database YNIVER;
Use YNIVER

create table FACULT
(FACULTY char(10) not null,
primary key(FACULTY),
Nam_F varchar(50) default '???',)

create table KAF
(PULP char(20) not null,
Name_KAF varchar(100) null,
FACULTY char(10) not null,
foreign key(FACULTY) references FACULT(FACULTY),)

insert into FACULT(FACULTY,Nam_F)
values ('ФИТ','Факультет Информационных технологий'),
('ИДиП','Издательское Дело и Полиграфия'),
('ХТиТ','Химическая Технология и Техника'),
('ИЭФ','Инженерно Экономический Факультет')

insert into KAF(PULP, Name_KAF, FACULTY)
values ('ИСиТ', 'Информационные системы и технологии', 'ФИТ'),
('ПОиСОИ','Полиграфического оборудования и систем обработки инфор-мации ', 'ИДиП'  ),
  ('БФ', 'Белорусской филологии','ИДиП'  ),
    ('ТНВиОХТ','Технологии неорганических веществ и общей химической технологии ','ХТиТ') ,
   ('ХТЭПиМЭЕ','Химии, технологии электрохимических производств и мате-риалов электронной техники',  'ХТиТ')  ,
      ('МиАХиСП','Машин и аппаратов химических и силикатных произ-водств', 'ХТиТ'),
      ('МиЭП',   'Менеджмента и экономики природопользования','ИЭФ')   ,
     ('СБУАиА', 'Статистики, бухгалтерского учета, анализа и аудита', 'ИЭФ')
     
  DELETE from KAF where FACULTY like    'ФИТ'
     
  select  Nam_F, PULP from FACULT Inner Join KAF on FACULT.FACULTY=KAF.FACULTY
  GROUP BY FACULT.Nam_F, KAF.PULP
  ORDER BY KAF.PULP ASC
  
  SELECT  FACULTY  from FACULT
      Where not exists  (select * from KAF  
      Where KAF.FACULTY = FACULT.FACULTY)
      
  SELECT FACULT.Nam_F, KAF.Name_KAF
  from FACULT Inner Join KAF on FACULT.FACULTY=KAF.FACULTY
    And   KAF.Name_kaf  Like  '%Технолог%'
  
  
 