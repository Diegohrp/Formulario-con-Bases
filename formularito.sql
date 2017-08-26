show databases;
create database DyA;
use DyA;
show tables;
create table formularito(
nombre nvarchar(20),
a_paterno nvarchar(40),
a_materno nvarchar(40),
escuela nvarchar(100) 
);
insert into formularito values ('Pancracio','Nepomuseno del Rio','Ortiz','José Vasconcelos');
select * from formularito;