--String Fonksiyonlar

select FirstName,SUBSTRING(FirstName,1,4) from Employees

select FirstName,SUBSTRING(FirstName,4,1) from Employees-- 3 parametre alır sütun başlanğıç bitiş değeri.

Select OrderDate,SUBSTRING(OrderDate,4,1) from Orders -- Tarih zaman ve sayısal değerlerde çalışmaz

select FirstName,left(FirstName,4) from Employees

select FirstName,right(FirstName,4) from Employees

Select OrderDate,left(OrderDate,4) from Orders --Tarih zaman yapısında çalışır.
Select Freight,left(Freight,4) from Orders --Sayısal tiplerde çalışır.

select Upper(FirstName),FirstName from Employees

select lower(FirstName),FirstName from Employees

select len(FirstName),FirstName from Employees

print charindex('@','erkanturk@gmail.com')

print charindex('@','erkanturk@gmail.@com',11)--ilk bulduğu karakteri getirir bize başlangıç index değeride verebiliriz.

print trim('    erkan türk    ')

print reverse('hamza')

print replace('matematik dersleri','matematik','Sql')

print replicate(char(9)+'Tuğrul'+Char(13),100)

--Ödev
--Customers tablosunda CompanyName alanında sadece ilk karakter küçük geriye kalan karakterler büyük olacak şekilde yazdırın.
Select CompanyName from Customers