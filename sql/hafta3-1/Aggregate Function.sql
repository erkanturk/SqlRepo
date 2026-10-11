/* Aggregate functions 
Aggregate function'lar bir değer dönderirler
Count => Bir tablo sütunununda kaç kayıt olduğunu bulmak için count kullanılır null olmayan tüm satırları sayar.
Sum=> Bir tablo sütununda toplamda kaç adet ürün olduğunu bulmak için Sum yapısı kullanılır  sütun da bulunan satır  içi toplama
Avg=> Bir tablo sütununda olan verilerin ortalamasını alır.
Max=> Bir tablo sütununda bulunan en büyük değeri getirir.
Min => Bir tablo sütununda bulunan en küçük değeri getirir.
*/
use Northwind
Select Top(1)* from Products order by UnitsInStock  desc

--Aggregate Max
Select MAX(UnitsInStock) from Products

--Min
Select Min(UnitPrice) from Products

--Çalışanlar tablosunda toplam kaç personel var
Select COUNT(EmployeeID) from  Employees

Select COUNT(Region) from  Employees--Null değerler dahil edilmez.

Select COUNT(*) from  Employees --Null ifade varsa bunları ayırt etmez 

Select * from Employees where Region is null


Select Count(*) from Orders--830

Select Count(ShipRegion) from Orders--323

Select Count(*)-Count(ShipRegion)from Orders --507

-- Orders Tablosunda Kargo maliyeti en yüksek olan tutarı getiren sorgu
Select Max(Freight) from Orders

--ORders Tablosunda Toplam Kargo maliyeti nedir ?
Select Sum (Freight) as 'Toplam Kargo Maliyeti' From Orders

--Order details tablosunda ki ürünlerin toplam maliyetlerini hesaplayın
Select Sum(UnitPrice*Quantity)as 'Toplam maliyet' from [Order Details]

Select Avg(UnitPrice*Quantity) 'Ortalama' from [Order Details]

Select Sum(UnitPrice*Quantity)/COUNT(*) 'Ortalama' from [Order Details]

--Steven adlı çalışanın toplamda kaç adet sipariş aldığını bulunuz ve  satışını da bulunuz.
Select EmployeeID from Employees where  FirstName='Steven'

Select COUNT(*) 'Toplam' from Orders where EmployeeID 
in(Select EmployeeID from Employees where  FirstName='Steven')

--Order Details tablosunda Toplam Satış ve  Ortalama satışı gösteren sorgu

Select SUM(UnitPrice*Quantity) "Toplam Satış",Avg(UnitPrice*Quantity) [Ortalama Satış]  from [Order Details] 