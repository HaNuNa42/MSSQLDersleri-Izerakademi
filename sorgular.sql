use ecommerce
Select * from Product
update Product set ProductDescription = '185cm' where id=12
update Product set ProductName = 'LG 95Z',ProductDescription = '155cm' where id=12

select * from Product
select id from Product
select id,ProductName,ProductDescription from Product
select * from Product where id= 12
select * from Product where ProductName = 'Asus N75SM'
select * from Product where ProductName = 'Asus N75SM' and ProductDescription='core i7 3.6ghz ram-16gb'
select * from Product where ProductName = 'Asus N75SM' and not ProductDescription='core i7 3.6ghz ram-16gb'
select * from Product order by ProductDescription  /* order by sýralama için kullanýlýr */
select * from Product order by ProductDescription desc
select * from Product order by ProductName desc
select * from Product where id between 5 and 10 /* between arasýnda demek örnekte id'si 5 ve 10 arasýnda olanlarý listeledik*/

select min(id) from Product /* min en düþük olaný verir*/
select max(id) from Product /* max en yuksek olaný verir*/
select count(id) from Product /* count toplam kayýt sayýsýný verir*/
select avg(id) from Product /* avg ortalamasýný verir*/
select sum(id) from Product /* sum toplamlarýný verir*/

select * from Product where ProductName like 'A%' /* like A harfi ile baþlayanlarý verir*/
select * from Product where ProductName like 'S%' /* S harfi ile baþlayanlarý verir*/
select * from Product where ProductName like '%o' /* o harfi ile baþlayanlarý verir*/
select * from Product where ProductName like '%e%' /* içerisinde e harfi olanlarý verir*/
select * from Product where ProductName like '__us%' /* ilk iki karakter ne olursa olsun us ile olanlarý verir*/

select * from Product where id>7
select * from Product where id >=7
select * from Product where id <> 9
select * from Product where id != 9
select * from Product where id in(10,11,12)
select * from Product where ProductName is null
select * from Product where ProductName is not null
select ProductName as UrunAdi, ProductDescription as UrunAciklamasi from Product /* as sütun ismni sorgu çýktýsýnda deðiþtirmek için kullanýlýr*/
select top 5 * from product 
select top 5 ProductName from Product


