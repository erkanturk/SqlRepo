/*
Sql => Sql global bir dildir, tüm ilişkisel veritabanlarının ortak dilidir
Kullanıldığı platformlar
Microsoft=> C#,Asp.net,Xamarin=Mssql (T-sql) ,Postgresql
Linux=>Php,Pythone,Docker=>MySql,PosgreSql
Oracle=>Java,Kurumsal=>PL-Sql
Mobil/Web=> Python,Js=>SqlLite,NoSql(MongoDb,Casandra vb)

*/
/*
Database (Veritabanı):İçerisinde Tablo yapıları view,Stored Procedure,Function Trigger,vb  bir projeyi destekleyen ana yapıları barındıran yapıdır.

Table(Tablo):Veri tabanı altında oluşturulan ve sütun satırlardan oluşan veri saklama birimidir.
*/

/* Veritabanı içerisinde DDL(Data defination language) Veri tanımlama dili ve DML(Data Manipulation language) veri manipülasyon dili
yapılar kullanılır.
DDL Yapılar veri tabanı işlemleri yani oluşturma güncelleme silme işlemleri yapar kritik önem arz ederler
DML yapılar Tablo içerisinde bulunan verilerle ilgili olarak kullanılan yapılardır Database özelinde bir işlem yapamazlar.
DDL Yapılar:
Create Oluşturma
Alter Mevcut yapıyı değiştirme
Drop Tamamen ortadan kaldırma
Truncate  varsayılan ayarlara dönderme (Tablo özelinde Idleri de sıfırlar)


DML Yapılar
Select Sorgulama Listeleme işlemlerinde kullanılır
Update Güncelleme işlemlerinde kullanılır veri özelinde
Insert Ekleme  tabloya veri eklemek için kullanırız.
Delete Tabloda bulunan veriyi silmek için kullanırız Id leri sıfırlayamaz.

*/