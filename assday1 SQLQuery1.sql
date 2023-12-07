create database OurExerciseDb1

on primary(name ='OurExerciseDb1_Data' ,Filename='D:\mphasis\assignments\phase3 Assignments\Day1\OurExercises.mdf',
size=24MB,Maxsize=48MB, filegrowth=4MB)
log on (name= 'OurExerciseDb1_log', Filename='D:\mphasis\assignments\phase3 Assignments\Day1\OurExercises.ldf')
COLLATE SQL_Latin1_General_CP1_CI_AS


use OurExerciseDb1
create table Product
(Pid int primary key,
PName nvarchar(50) not null,
PPrice float check (PPrice>=50 and PPrice<=100000),
Pcompany nvarchar(50),
PQty int default 1 check (PQty>=1)
)
insert into Product values  (50,'samsung Galaxy',50000,'samsung', 1)
insert into Product values  (51,'Iphone14',54000,'Apple', 2)
insert into Product values  (52,'redmi12 5g ',140000,'Redmi', 1)
insert into Product values  (53,'HTC',14770,'HTC', 3)
insert into Product values  (54,'IQZ3',22000,'Vivo', 3)
insert into Product values  (55,'OPPO',22000,'Oppo',2)

select * from Product


