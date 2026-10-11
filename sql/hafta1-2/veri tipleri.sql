--Tekli yorum satırı kodda okunabilirliği yoktur.
/* Sql Tarafı Büyük küçüğe duyarlı değildir.
Bir sorgulama dili olduğu için daha esnek yapıdadır.

Declare ile değişken tanımlarız. Değişkenler ise bir veriyi taşıyabilmek için kullandığımız yapılardır.
Veri tanımlama örneği
Declare @degiskenAdi veriTipi;
*/

--Tam sayı veri tipleri
Declare @bigint bigint =123456789123;--Çok büyük  tam sayılar(8 byte)
Declare @intVal int=123456789;--orta büyüklükte tam sayı (4 byte)
Declare @smallint smallint=32767;--Küçük tam sayılar(2 byte)
declare @tinyint tinyint=255;--En küçük tam sayı (1 byte)

--metinsel veri tipleri
--Char ifadesi eğer 100 karakter olarak ayarlanırsa örnekteki gibi  verilen karakterden sonrasını otomatik olarak boşluk doldurur.
declare @charval Char(100)='Test';--1 byte yer tutar her karakter
declare @varchar varchar(100)='Test';--1 byte yer tutar her karakter
declare @nvarchar nvarchar(100)=N'Test';-- 2 byte yer tutar her karakter arapça çince kiril vb karakterleri de içerisinde barındırır.
declare @nchar nchar(100)=N'Test';--2 byte yer tutar her karakter arapça çince kiril vb karakterleri de içerisinde barındırır.
declare @text text ='Text';--Eski yapıdır 
declare @varcharMax varchar(max)='Test'--2gb a kadar yer tutar ve 8000 karakter e kadar yer tutabilir
--Max ifadesi 8000 karakter gibi ifadeler verildiğinde index dediğimiz sayfalama yapısını desteklemez.


Select DATALENGTH(@charval) as Toplamdeger

Select DATALENGTH(@varchar) as Toplamdeger

Select DATALENGTH(@nvarchar) as Toplamdeger
Select DATALENGTH(@nchar) as Toplamdeger
print @charval--Print ifadesi ile ekrana yazdırma işlemi yaparız.
print @varchar 

--Tarih zaman veri tipleri
declare @Date date='2026-09-27';--Yıl ay gün bilgisi (3 byte)
declare @time time ='10:36:00';--Saat dakika saniye (3-5 byte yer kaplar hassasiyetine göre)
declare @Datetime datetime='2026-09-27 10:37:00.000';--Tarih saat (8 byte yer kaplar)
declare @Datetime2 datetime2='2026-09-27 10:37:00.000';--6 ila 8 byte yer kaplıyor daha düşük hassasiyet
declare @smallDatetime smalldatetime='2026-07-11 18:16:00';--Düşük hassasiyet 4 byte 

Declare @Guid UniqueIdentifier =NewId();--Global benzersi kimlik 16 byte 
print @Guid


declare @bit bit =1;--1 true 0 false

declare @json varchar='{key:test Value:test}';
-- https://learn.microsoft.com/tr-tr/ssms/sql-server-management-studio-keyboard-shortcuts