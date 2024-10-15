use Sinif301
--Insert 
--Sql sorgu dil içerisinde bir tabloya kayıt ekleme işlemi için kullanılır
--Insert işlemi 'INTO' komutu ile birlikte kullanılır
--Insert into komutlarını yazdıktan sonra işlem yapmak istediğiniz tablonun adı yazılır
--Sonrasında () parantez içerisinde değer eklemek istediğiniz kolon isimleri yazılır
--Daha sonra values komutu yazılarak tekrar () parantez içerisinde sırası ile eklemek istediğiniz değerler yazılır

--Syntax
--INSERT INTO <Tablo> (<Kolon1> ,<Kolon2>,<Kolon3> , ...) values (<deger1>,<deger2>,<deger3>,.....)

--Not: Insert işlemi yapılırken PK bilgisi ve değeri girilmez

--Örnek
--Ogretmenler tablosuna yeni bir öğretmen ekleyelim
insert into Ogretmenler (OgretmenAd,OgretmenSoyad,Brans) values ('Leyla','Kabakçı','Bilgisayar')

Select * From Ogretmenler

--Ogrenciler tablosuna yeni bir kayıt ekleyelim
insert into Ogrenciler (Ad,Soyad,DogumTarihi,Not1,Not2,OgretmenID)
values ('Yunus','Maden','2000-02-25',75,80,1)

select * from Ogrenciler

--Örnek
--Öğrencileri öğretmen isimleri ile birlikte listeleyelim
select
	(Ogrenciler.Ad +  ' ' +Ogrenciler.Soyad) as 'Öğrenci Ad Soyad',
	(OgretmenAd + ' ' + OgretmenSoyad) as [Öğretmen Ad Soyad]
from Ogrenciler
	inner join Ogretmenler on Ogrenciler.OgretmenID=Ogretmenler.ID