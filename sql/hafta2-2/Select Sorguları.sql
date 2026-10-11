use Northwind

--Product Tablosunda id si 14 olanı getiren sorgu
Select * from Products where ProductID=14

--Product Tablosunda id si 1 3 5 7 olanları getiren sorgu

Select * from Products where ProductID in(1,3,5,7)

Select * from Products where ProductID Between 1 and 7

Select * from Products where ProductID =1 or ProductID =3 or ProductID =5 or ProductID =7 

--Product Tablosunda CategoryId si 1 olan ürünlerin ProductName,UnitePrice,UnitsInStock alanlarını getiren sorgu
Select ProductName,UnitPrice,UnitsInStock from Products Where CategoryID=1 

--Gelen tabloda  Stokları küçükten büyüğe sıralayalım
Select ProductName,UnitPrice,UnitsInStock from Products Where CategoryID=1  order by UnitsInStock asc 
--asc asceding a z ye sırala yada küçükten büyüğe  asc yazmasakda küçükten büyüğe sıralama yapar.
Select ProductName,UnitPrice,UnitsInStock from Products Where CategoryID=1  order by UnitsInStock desc
Select ProductName,UnitPrice,UnitsInStock from Products Where CategoryID=1  order by UnitsInStock desc ,UnitPrice asc

--Employees Tablosunda Region alanı null olanları getiren sorgu
Select * from Employees where Region is null  

Select * from Employees where Region =''

--Orders tablosunda Kargo maliyeti(Freight) en yüksek olan 5 siparişi getiren sorgu 

Select Top(5)* from Orders Order by Freight desc 

--En fazla kargo maliyeti hangi ülkelere olmuştur ilk 3 ü getirsin ülke kargo maliyeti ve il olarak ve türkçe olsun sütunlar
--As yapısı sanal bir isimlendirme yapar 
Select Top(3) Freight as 'Kargo Maliyeti',ShipCountry as Ulke ,ShipCity as  [İl] from Orders Order by Freight desc
