/*DML Komutlar Data Manipulation Language veri manipülasyon dili*/



create Database Test
go 
use Test
go
Create Table TestVeri(
Id int primary key identity(10,2),
Ad varchar(50) not null,
Soyad varchar(50),
Email varchar(50)
)

insert into TestVeri values('Erkan','Türk','test@test.com'),
('Hamza','babapiro','hamzababapiro@gmail.com'),
('Tahsin','Canpolat','TC@gmail.com')


insert into TestVeri(Ad,Email) values('Türk','test@test.com')

Select * from TestVeri where Id =12

--delete from TestVeri where Id=10

--delete from TestVeri where Id between 14 and 20

--delete from TestVeri where Id in(2,4,6,8,10) 

Select * from TestVeri

Update TestVeri set Ad='Erkan' where Id=26 --between ve in yapısıda kullanılır.

Update TestVeri set Ad='Erkan' where Ad='Türk'

truncate table testveri

