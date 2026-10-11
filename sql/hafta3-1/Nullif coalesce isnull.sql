/* Coalesce isnull nullif
Eğer bir tabloda null değerler varsa bu değerler bizim için sorun yaratabılir 
Düzgün raporlama yapmamızı engelleyebilir bunun için raporlamada düzgün sonuç almamızı sağlayan
Coalesce isnull null if keywordleri vardır.
*/

Select * from Customers

Select CompanyName,Region from Customers

Select CompanyName,coalesce (Region,'') from Customers

Select Count (coalesce (Region,'Tanımsız')) from Customers--null alanlar bu sorguda nulluktan çıkar.

Select CompanyName,isnull (Region,'Değer yok') from Customers

--Nullif
--eğer kolondaki bir kayıt verdiğim değere eşit ise
--değeri null yap

Select Avg(UnitsInStock) from Products--Stoğu bitmiş ürünlerde ortalamaya dahil


Select AVG(Nullif(UnitsInStock,15)) from Products --Stok ta 0 olanları null yap 


-- 0 olan miktarı bulma

Select Count(UnitsInStock)-count(Nullif(UnitsInStock,0)) from Products


Select Avg(UnitsInStock)'Stok Yok',Avg(Nullif(UnitsInStock,0)) 'Nulla çevrilmiş',UnitsInStock from Products Group by UnitsInStock order by 1 


--Ödev
--Orders Tablosunda Siparişleri 1997 nin ocak ayında verilen siparişleri getiren sorgu (1997)(01)
