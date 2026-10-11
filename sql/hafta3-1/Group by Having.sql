/* Group by => guruplama işlemi yapar 
   Having => koşul yada filtreleme için kullamılır
*/

--Çalışanlardan  Sipariş tablosunda toplam kaç sipariş aldıklarını bulan sorgu Her çalışan ayrı ayrı görünsün

Select Count(*) 'Satış miktarları',EmployeeID 'Çalışan' from Orders group by EmployeeID

Select Count(*) 'Satış miktarları',EmployeeID 'Çalışan' from Orders group by EmployeeID order by [Satış miktarları] desc


Select Count(*) 'Satış miktarları',EmployeeID 'Çalışan' from Orders group by EmployeeID order by 1 desc

-- Çalışanlardan kargo maliyeti en fazla hangi çalışan tarafından olduğunu bulan sorgu

Select Sum(Freight) 'KArgo Maliyeti',EmployeeID 'Çalışan'   from Orders Group by EmployeeID order by 1 desc

--Orders Tablosunda  en fazla hangi ülkeye giden siparişlere  toplam da ne kadar kargo maliyeti ödendi ve hangi çalışan tarafından işlem yapıldı

Select Sum(Freight) 'KArgo Maliyeti',EmployeeID 'Çalışan',
ShipCountry   from Orders Group by EmployeeID,ShipCountry order by 1 desc

--Order details tablosunda sipariş miktarının  maliyeti 500 den fazla olanları getiren sorgu ve sipariş numarası 
--Group by dan sonra where kullanılamaz
Select sum(UnitPrice*Quantity) 'Toplam tutar',OrderID from [Order Details] group by OrderID  having sum(UnitPrice*Quantity)>500

--Çalışanların aldığı siparişlerden almanyada olan ve 10 dan büyük olan siparişleri getiren sorgu

Select Count(*) 'Toplam', EmployeeID,ShipCountry from Orders where ShipCountry='Germany' 
Group  by EmployeeID,ShipCountry Having Count(*)>10

Select Count(*) 'Toplam', EmployeeID,ShipCountry from Orders 
Group  by EmployeeID,ShipCountry Having ShipCountry='Germany' and Count(*)>10

--Hangi Kategorinin ortalaması en yüksek 

Select * from Categories
Select AVG(UnitPrice*UnitsInStock) Ortalama, CategoryID  from Products Group by CategoryID Having AVG(UnitPrice*UnitsInStock)>1000


Select AVG(UnitPrice*UnitsInStock)   from Products

Select * from Products order by CategoryID asc