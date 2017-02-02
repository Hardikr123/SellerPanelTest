--create table categorymaster
--(
--ID INT primary key identity(1,1) not null ,Code varchar(50),description varchar(50),parent int
--)


--insert into categorymaster values('C1','Category 1',0),('C100','Sub Category 1',1),('C101','Sub Category 2',1),('C102','Sub Category 3',1),
--('C2','Category 2',0),('C103','Sub Category 1 - 2',1),('C104','Sub Category 2 -2',1),('C105','Sub Category 3-2',1)

--select * from categorymaster

--create table brandmaster
--(
--ID INT primary key not null identity(1,1),
--BrandDesc varchar(150),
--Active bit
--)
--insert into brandmaster values('Reebok',1),('Polo',1),('adidas',1),('Buffelo',1),('Jack and Jones',1),('Spyker',1),('Lee Cooper',1)

--create table CountryofOrigin
--(
--ID INT primary key not null identity(1,1),
--CountryDesc varchar(150),
--active bit
--)
--insert into CountryofOrigin values('United States',1),('Canada',1),('Australia',1),('France',1),('Germany',1),('Iceland',1),('Italy',1)


create table  ProcessTimeMaster
(
ID INT NOT NULL Primary Key Identity(1,1),
Description varchar(150)
)
insert into ProcessTimeMaster values('Same day'),('Next day'),('3 days'),('5 days'),('7 days')

create table WarrantyMaster
(
ID INT NOT NULL Primary Key Identity(1,1),
Description varchar(150)
)
insert into ProcessTimeMaster values('Doesen''t Apply'),('3 Months'),('6 Months'),('1 Year'),('2 Years'),('3 Years')


create table product
(
ID INT primary key identity(1,1) not null,
Name Varchar(250),
Model varchar(250),
Description varchar(max),
Highlights varchar(350),
ShippingWeight decimal,
SKU VARCHAR(250),
PRICE DECIMAL,
Quantity decimal,
Type Varchar(50),
ProcessTimeID INT,
CountryOfOrigin INT,
BrandID INT,
Cat1ID int,
Cat2ID INT,
Cat3ID Int,
WarrentyID int,
Active bit
)


categorymaster
brandmaster
CountryofOrigin
ProcessTimeMaster
WarrantyMaster
product




