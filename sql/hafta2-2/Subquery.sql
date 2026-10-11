/* SubQuery İç içe sorgu
Bir tabloda var olan değer üzerinden ortak nokta ile başka bir tablo üzerinden veriyi getirmemizi sağlar.
*/
--LastName'i Suyama olan Employees in aldığı siparişlerden kargo maliyeti en düşük 3 siparişi getiren sorgu

Select * from Employees 
Select * from Orders

Select * from Employees where LastName='Suyama'--Subquery de dıştaki değer sadece bir sütun döndermelidir.

Select  Top(3)* from Orders where EmployeeID in
(Select EmployeeID from Employees where LastName='Suyama') order by Freight 

Select  Top(3)* from Orders where EmployeeID =6 order by Freight 

--Aniseed Syrup adlı üründen verilen siparişlerden sipariş fiyatı ve kargo maliyeti en yüksek olanları listeleyin

Select ProductID from Products where ProductName in('Aniseed Syrup')
Select top(1) OrderID from [Order Details] where ProductID 
in(Select ProductID from Products where ProductName in('Aniseed Syrup')) 
Order by UnitPrice*Quantity desc

Select * from Orders where OrderID in(
Select top(1)OrderID from [Order Details] where ProductID 
in(Select ProductID from Products where ProductName in('Aniseed Syrup')) 
Order by UnitPrice*Quantity desc
)


-- Andrew FirstName e sahip çalışanın  Italy ülkesinden aldığı siparişlerden kargo maliyeti 70 ten büyük olanı getiren sorgu
Select * from Employees where FirstName='Andrew'

Select * from Orders  where ShipCountry='Italy' and  Freight>70 and 
EmployeeID in(Select EmployeeID from Employees where FirstName='Andrew')

Select * from Orders  where ShipCountry='Italy' and  Freight>70 and 
EmployeeID in(2)

--Ödev
--Products Categories
--Beverages CategoryName ine ait en az ürünüleri liste halinde getiren sorguyu yazınız küçüğkten büyüğe