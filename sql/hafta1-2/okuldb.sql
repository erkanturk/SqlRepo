

/*DDL
Create > oluşturma
Alter > düzenleme 
Drop > db silme tablo sütun silme(alterle)
Truncate > Id sıfırlama ve verileri silme
*/

Create Database OkulDb
go
use OkulDb
go

Create Table Ogrenci(
OgrNo int primary Key identity(1,1),
Ad varchar(50),
Soyad varchar(50),
Tc varchar(11),
DogumTarihi datetime2
)

Create table Veli(
Id int primary key identity(1,1),
OgrenciId int foreign key references Ogrenci(Ogrno),
Ad varchar(50) not null,--Not null ifadesi bu alanın boş geçilemeyeceğini belirtir.
Soyad varchar(50),
Tc varchar(50)
)

Select * from Ogrenci -- GEtirme listeleme Dml komut

Select * from Veli

Alter table ogrenci--Mevcut tabloya sütun ekleme
add Email varchar(50)

Alter table veli
add Tel varchar(13)

alter tAblE OgRenci
drop column email

truncate table veli-- Idlerle birlikte silme işlemi yapar.

Drop database SınıfDb--Db silme

drop table test

