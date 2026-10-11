--Ödev 
--Employees tablosundaki çalışanların yaşlarını getirin örneğin 75 76 gibi değerler olacak 
--Tarih zaman fonksiyonları
Select DATEPART(YEAR,OrderDate) from Orders

Select YEAR(OrderDate) from Orders

Select DATEPART(MONTH,OrderDate) from Orders

Select MONTH(OrderDate) from Orders

Select DATEPART(DAY,OrderDate) from Orders

Select DAY(OrderDate) from Orders

Select DATEPART(WEEK,OrderDate) from Orders--Yılın hangi haftası

Select DATEPART(DAYOFYEAR,OrderDate) from Orders--yılın hangi günü

Select DATEDIFF(YEAR,OrderDate,ShippedDate) from Orders


--Şimdiki zaman 
print getdate()

print format(getdate(),'D')

print format(getdate(),'D','TR')
print format(getdate(),'D','Ru')
print format(getdate(),'D','DE')
print format(getdate(),'D','Es')

print format(getdate(),'d','TR')

print ascii('$')
print ascii('₺')

print char(159)
print char(149)