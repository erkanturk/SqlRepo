Create Database DenemeDb
go
use DenemeDb

Create table Deneme(
ad varchar(50),
soyad varchar(50)
)


Create table Deneme2(
Id int primary key identity(1,1),
ad varchar(50),
soyad varchar(50)
)
bulk insert Deneme
from 'D:\Deneme3.txt'
with(
fieldterminator='\t',
Rowterminator='\n'
)

delete from Deneme
bulk insert Deneme
from 'D:\test.txt'
with(
fieldterminator='\t',
Rowterminator='\n',
firstrow=2
)

select * from Deneme

bulk insert Deneme
from 'D:\test.txt'
with(
fieldterminator='\t',
Rowterminator='\n',
firstrow=2,
CodePage='65001'
)

truncate table deneme2

bulk insert deneme2
from 'D:\deneme.txt'
with(
fieldterminator='\t',
Rowterminator='\n',
firstrow=2,
CodePage='65001'
)

Select * from Deneme2

bulk insert deneme
from 'D:\deneme3.txt'
with(
DataFileType='Char',
fieldterminator='\,',
Rowterminator='\n',
firstrow=2,
CodePage='65001',
Tablock,
MaxErrors=50,--50 hataya kadar tölerans göster
--KeepNulls,--Null olarak ayarla
KeepIdentity
)
