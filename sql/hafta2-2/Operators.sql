
/*Operators

Aritmatik Operators
+ toplama
- çıkarma
* çarpma
/ bölme
% mod alma bir sayının bölümünden kalan değer.

Karşılaştırma Operatorleri
> Büyüktür
< Küçüktür
>= Büyük eşittir
<= Küçük eşittir
= Eşittir.
!= Eşit değildir.
<> Eşit değildir.

Between Arasında
in İçinde 
Like  Değer arama
is not null null değil mi ?
is null Null mu ?

Mantıksal operatörler
or Veya 
And Ve 


*/

Create database PersonelDb
go
use PersonelDb
go
Create Table Personeller
(
Id int Primary key  identity(1,1),
Ad Varchar(50) not null,
Soyad varchar(50) not null,
Tc varchar(11) not null,
Adres Text,
Maas Float not null
)
/* İnsert into yapısı veri eklemek için kullanılır bir tabloya veri eklemek için Insert into TabloAdi olarak devam eder.
*/
Insert into Personeller Values('Erkan','Türk','1234567891','Kadıköy/Caferağa',2500),
('Tahsin','Canpolat','12332165478','Sancaktepe/Istanbul',6000),
('Altan Emre','Demirci','32165498733','Umraniye/Istanbul',7000),
('Onur','Yağız','74174174111','Umraniye/Istanbul',4000),
('Furkan','Uçan','78998745696','Uskudar/Istanbul',3500)

Insert into Personeller (Ad,Soyad,Tc,Maas) values('Süleyman','Atmaca','55555669874',4500)

Select * from Personeller
--Bir sorguda koşul var ise where ifadesi kullanılır.
Select * from Personeller Where Adres is null

Select * from Personeller where Adres is not null

Select * from Personeller where Ad = 'erkan' --Ad verdiğim değere eşitse getir.

Select * from Personeller where ad in ('Erkan')
--Adı erkan olmayanları getir
Select * From Personeller where Ad <> 'Erkan'

Select * From Personeller where Ad != 'Erkan'

-- Adı Tahsin Soyadı Canpolat olan kaydı getiren sorgu
Select * from Personeller where Ad ='Tahsin' and Soyad='Canpolat'

--Bana erkan veya tahsini getir.
Select * from Personeller where Ad='Tahsin' or Ad='Erkan'
--İçinde bu değerler olan verileri getir.
Select * from Personeller where ad in ('Erkan','Tahsin','Onur')

--Maaşı 4500 tl den büyük olanları getiren sorgu
Select * from Personeller where Maas>4500
--Maaşı 3500 ila 4500 arasındaki değerleri getiren sorgu
Select * from Personeller where Maas between 3500 and 4500

Select * from Personeller where Maas >3500 and Maas <4500

--Adresi Kadıköy olan personelleri getiren sorgu
Select * from Personeller where Adres ='Kadıkoy'
Select * from Personeller where Adres in('Kadıkoy')

Select * from Personeller where CONVERT(varchar,Adres)='Kadıköy/Caferağa' 

Select * from Personeller where Adres Like 'Ka%'--K ile başlayanları getir.
Select * from Personeller where Adres Like '%l'--L ile bitenler

Select * from Personeller where Ad like '___an%'

Select * from Personeller where Ad like '%an'

Select * from Personeller where Ad like '%i%'-- İçinde geçeni getir.

--İsminde L harfi olan Tc sinde '33' bulunan Adresi Ümraniye olan kaydı getiren sorgu
Select * from Personeller where Ad Like '%L%' and Tc Like '%33%' and Adres Like '%Umraniye%'


declare @sayi int=10;
declare @sayi2 int =3;

declare @sonuc int;

set @sonuc=@sayi%@sayi2--Set ile mevcut değeri güncelleriz.

print @sonuc

set @sonuc=@sonuc+1
print(@sonuc)

