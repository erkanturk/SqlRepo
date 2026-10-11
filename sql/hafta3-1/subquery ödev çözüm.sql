--Ödev
--Products Categories
--Beverages CategoryName ine ait en az ürünüleri liste halinde getiren sorguyu yazınız küçüğkten büyüğe

Select CategoryID from Categories where CategoryName='Beverages' 

select * from Products where CategoryID in 
(Select CategoryID from Categories where CategoryName='Beverages' ) order by UnitsInStock