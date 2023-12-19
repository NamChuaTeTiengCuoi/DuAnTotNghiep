use master
go
create database DATNt
go
use DATNt
go
create table customer(
Username varchar(25) primary key ,
Password nvarchar(25),
Fullname nvarchar(50),
Phone varchar(12),
Email varchar(50),
);
go
create table Timeorder(
Id varchar(2) primary key,
Timeline time(0),
slot int
);
go
create table Role(
Id int IDENTITY(1,1) not null primary key,
Name nvarchar(25) not null,
);
go
create table Staff(
Id int IDENTITY(1,1) not null  primary key,
Name nvarchar(100),
Birthday Date,
Address nvarchar(100),
Phone varchar(12),
Mail nvarchar(100),
Image nvarchar(255),
Experience int,
Role int not null foreign key references Role(Id),
Status bit
);
go
create table Service(
Id int IDENTITY(1,1) not null primary key,
Name nvarchar(50),
Price real ,
Time nvarchar(10),
Status bit,
Descripsion nvarchar(max),
Image nvarchar(50)
);
go
create table Sale(
Code varchar(25) primary key,
Percent_price int
);
go
create table Bill(
Id int IDENTITY(1,1) not null primary key,
Customer varchar(25) not null foreign key references Customer(username),
Time datetime,
Service int not null foreign key references Service(Id),
Price real,
Dayorder Date,
Timeorder varchar(2) not null foreign key references Timeorder(Id),
Sale varchar(25) foreign key references Sale(Code),
Total real
);
go


insert into customer values
('ADMINSys','1234567',N'Manager','0325666541','narota01082003@gmail.com'),
('namdang12','1234567',N'Đặng Hoàng Nam','0325666541','hoangnam26022003az@gmail.com'),
('thangbuoi32','1234567',N'Bùi Tô Việt Thắng','0354777156','narota01082003@gmail.com'),
('huynguyn','1234567',N'Nguyễn Quốc Huy','0365963125','nguyenquochuy010603@gmail.com'),
('datdaccau','1234567',N'Nguyễn Tiến Đạt','0385623154','nt19051073@gmail.com'),
('sondonlau','1234567',N'Đặng Ngọc Sơn','0346822392','blackholeevolt@gmail.com');

SET IDENTITY_INSERT Service ON
insert into Service ([Id], [Name], [Price], [Time], [Status] ,[Descripsion], [Image]) values (1000,N'Japanese sauna',22,'1h',1,N'This method has the effect of relaxing, relieving stress, cleansing the skin, stimulating blood circulation and improving health.','MSxonghoi.jpg')
insert into Service ([Id], [Name], [Price], [Time], [Status] ,[Descripsion], [Image]) values (1001,N'Swedish style massage',18,'50p',1,N'This method has many health and mental benefits, such as reducing pain and muscle stiffness, improving health and immunity, rejuvenating skin, and improving sleep.','MSthuydien.jpg')
insert into Service ([Id], [Name], [Price], [Time], [Status] ,[Descripsion], [Image]) values (1002,N'Cupping massage',15,'50p',1,N'is a folk treatment method originating from China, using glass or bamboo cups to create negative pressure on the skin, stimulate blood circulation, eliminate toxins and reduce pain.','MSgiachoi.jpg')
insert into Service ([Id], [Name], [Price], [Time], [Status] ,[Descripsion], [Image]) values (1003,N'Aromatherapy massage',30,'50p',1,N'Helps customers relax mentally, balance energy, improve blood circulation and immune system, reduce stress and fatigue','MShuonglieu.jpg')
insert into Service ([Id], [Name], [Price], [Time], [Status] ,[Descripsion], [Image]) values (1004,N'Full body therapeutic massage',25,'50p',1 ,N'This method uses massage, rubbing, patting, kneading, stroking and gliding movements into muscle areas of the body to stimulate blood circulation, promote the detoxification process and help muscles relax.','MStrilieutoanthan.jpg')
insert into Service ([Id], [Name], [Price], [Time], [Status] ,[Descripsion], [Image]) values (1005,N'Aesthetic embroidery',25,'50p',1 ,N'Cosmetic embroidery is a beauty method that uses cosmetic needles to implant color into the skin, creating the desired shape and color for facial parts such as eyebrows, lips, and eyelids.','MStrilieutoanthan.jpg')
insert into Service ([Id], [Name], [Price], [Time], [Status] ,[Descripsion], [Image]) values (1006,N'Full body stone massage',25,'50p',1 ,N'With the principle of heating the body with many different temperature levels, hot stone massage helps the body is tissues expand, naturally reducing muscle tension or muscle pressure on the nerves that causes stress and fatigue.','MStrilieutoanthan.jpg')
insert into Service ([Id], [Name], [Price], [Time], [Status] ,[Descripsion], [Image]) values (1007,N'Treatment of melasma and freckles',25,'50p',1 ,N'Helps you regain the youthfulness of your skin, this method is painless and highly effective for women.','MStrilieutoanthan.jpg')
insert into Service ([Id], [Name], [Price], [Time], [Status] ,[Descripsion], [Image]) values (1008,N'Whitening bath with natural herbs',25,'50p',1 ,N'Herbal whitening bath has many different effects for the body such as exfoliating, preventing the formation of melanin, helping to remove dark spots and roughness, returning brightness to your skin.','MStrilieutoanthan.jpg')
insert into Service ([Id], [Name], [Price], [Time], [Status] ,[Descripsion], [Image]) values (1009,N'Treatment of acne and scars',25,'50p',1 ,N'Helps you remove keloid scars, concave scars and treat acne with high technology','MStrilieutoanthan.jpg')

SET IDENTITY_INSERT Service OFF

SET IDENTITY_INSERT Role ON
insert into Role ([Id], [Name]) values (0,'Manage')
insert into Role ([Id], [Name]) values (1,'Massage staff')
insert into Role ([Id], [Name]) values (2,'Maketting')
insert into Role ([Id], [Name]) values (3,'Spa Therapist')
SET IDENTITY_INSERT Role OFF

SET IDENTITY_INSERT Staff ON
insert into Staff ([Id], [Name], [Birthday], [Address], [Phone] ,[Mail], [Image], [Experience], [Role], [Status]) values (001,N'Nguyễn Hoàng Trọng','1995-11-11',N'12 Tô Ký','0365223145','diablo190703@gmail.com','',5,0,1)
insert into Staff ([Id], [Name], [Birthday], [Address], [Phone] ,[Mail], [Image], [Experience], [Role], [Status]) values (002,N'Lê Hồng Lan','1999-10-2',N'34 Nguyễn Kiệm','0351236987','lan@gmail.com','',2,1,1)
insert into Staff ([Id], [Name], [Birthday], [Address], [Phone] ,[Mail], [Image], [Experience], [Role], [Status]) values (003,N'Nguyễn Ngọc Đăng','2000-12-1',N'32 Quang Trung','0321569847','dang@gmail.com','',2,1,1)
insert into Staff ([Id], [Name], [Birthday], [Address], [Phone] ,[Mail], [Image], [Experience], [Role], [Status]) values (004,N'Nguyễn Thị Thủy','1998-3-4',N'748 Nguyễn Đức Trọng','0345223654','thuy@gmail.com','',3,2,1)
insert into Staff ([Id], [Name], [Birthday], [Address], [Phone] ,[Mail], [Image], [Experience], [Role], [Status]) values (005,N'Đặng Ngọc Duyên','1997-8-8',N'231 Quang Trung','0356985633','duyen@gmail.com','',2,3,0)
insert into Staff ([Id], [Name], [Birthday], [Address], [Phone] ,[Mail], [Image], [Experience], [Role], [Status]) values (006,N'Nguyễn Thị Đông Uyên','2000-12-28',N'231 Nguyễn Trãi','0343829343','uyenng12@gmail.com','',1,1,1)
insert into Staff ([Id], [Name], [Birthday], [Address], [Phone] ,[Mail], [Image], [Experience], [Role], [Status]) values (007,N'Nguyễn Phượng','2001-12-1',N'967 Tô Ký','0343654236','phuong56@gmail.com','',1,1,1)
insert into Staff ([Id], [Name], [Birthday], [Address], [Phone] ,[Mail], [Image], [Experience], [Role], [Status]) values (008,N'Lê Liên Hoa','1998-3-28',N'453 Trương Thị Hoa','0566953624','llh1228@gmail.com','',2,1,1)
insert into Staff ([Id], [Name], [Birthday], [Address], [Phone] ,[Mail], [Image], [Experience], [Role], [Status]) values (009,N'Nguyễn Hoàng Long','1999-2-10',N'67 Phạm Thế Hiển','0388663254','aLong@gmail.com','',4,3,1)
insert into Staff ([Id], [Name], [Birthday], [Address], [Phone] ,[Mail], [Image], [Experience], [Role], [Status]) values (010,N'Lê Nguyên Huy','2000-10-3',N'231 Phạm Văn Đồng','0378441256','NguyenHy55@gmail.com','',2,2,1)
insert into Staff ([Id], [Name], [Birthday], [Address], [Phone] ,[Mail], [Image], [Experience], [Role], [Status]) values (011,N'Nguyễn Thị Liên','1997-9-9',N'32 Phan Đình Giót','0368554236','lien99@gmail.com','',3,3,1)
SET IDENTITY_INSERT Staff OFF

insert into Timeorder values
('00','06:00:00',20),
('01','07:30:00',20),
('02','09:00:00',20),
('03','10:30:00',20),
('04','13:00:00',20),
('05','14:30:00',20),
('06','16:00:00',20),
('07','19:00:00',20),
('08','20:30:00',20);

insert into Sale values 
('',0),
('KHVIP',20),
('KHMOI',30),
('MONQUANHO',10),
('NGAYMOI',20),
('SIEUUUDAI',50);

SET IDENTITY_INSERT Bill ON
insert into Bill ([Id], [Customer], [Time], [Service], [Price], [Dayorder], [Timeorder] ,[Sale] ,[Total]) values (001,'namdang12','2023-6-12 06:00:00',1000,22,'2023-7-12','01','KHVIP',17.6)
insert into Bill ([Id], [Customer], [Time], [Service], [Price], [Dayorder], [Timeorder], [Sale] ,[Total]) values (002,'thangbuoi32','2023-7-12 06:00:00',1001,18,'2023-10-12','03','KHMOI',12.6)
insert into Bill ([Id], [Customer], [Time], [Service], [Price], [Dayorder], [Timeorder], [Sale] ,[Total]) values (003,'huynguyn','2023-8-12 06:00:00',1000,22,'2023-1-12','06','KHVIP',17.6)
insert into Bill ([Id], [Customer], [Time], [Service], [Price], [Dayorder], [Timeorder], [Sale] ,[Total]) values (004,'namdang12','2023-9-12 06:00:00',1000,22,'2023-5-12','02','',22)
insert into Bill ([Id], [Customer], [Time], [Service], [Price], [Dayorder], [Timeorder], [Sale] ,[Total]) values (005,'namdang12','2023-10-12 08:30:00',1004,25,'2023-2-12','08','',25)
SET IDENTITY_INSERT Bill OFF






