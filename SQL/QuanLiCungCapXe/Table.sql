create database CSDLCungCapXe;
use CSDLCungCapXe;

create table dongxe(
dongxe varchar(50) primary key not null,
hangxe varchar(50),
songuoingoi int
);

create table nhacungcap(
manhacc int not null primary key,
tennhacc varchar(50),
diachi varchar(50),
Sodt varchar (20),
masothue varchar(30)
);

create table loaidichvu(
maloaiDV int not null primary key,
tenloaidv varchar(50)
);

create table mucphi(
mamucphi int not null primary key,
dongia int,
mota varchar(50)
);

create table Dangkycungcap(
maDKCC int not null primary key,
manhacc int,foreign key (manhacc) references nhacungcap(manhacc),
maloaidv int, foreign key (maloaidv) references loaidichvu(maloaidv),
mamucphi int, foreign key (mamucphi) references mucphi(mamucphi),
dongxe varchar(50), foreign key (dongxe) references dongxe(dongxe),
BdCCdate datetime,
ktccdate datetime,
SLxeDK int
);

insert into nhacungcap values (1,'nha xe duy manh','Ha Noi','077777777','1111'),(2,'nha xe thai thuy','Hai phong','0888888888','2222'),(3,'nha xe Hoi Anh','Hai phong','0111111111','3333'),
(4,'nha xe Viet Tinh','Ha noi','0555555555','5555'),(5,'nha xe Tinh Thuong','Ha noi','06666666666','6666');

insert into loaidichvu values (1,'cho thue theo thang'),(2,'cho thue dai han'),(3,'cho thue thue kem lai');

insert into Mucphi values (1,30000000,'1 thang khong kem lai xe'),(2,25000000,'1 thang khong kem lai xe'),(3,45000000,'1 thang kem lai xe');

insert into dongxe values ('xe cho khach 29 cho ngoi ','toyota',29),('xe cho khach 36 cho ngoi ','honda',36),('xe cho khach 45 cho ngoi ','kia',45),('xe cho khach 16 cho ngoi ','toyota',16);

insert into dangkycungcap values (1,1,1,1,'xe cho khach 29 cho ngoi ','2020-01-01','2022-01-01',10),(2,3,3,3,'xe cho khach 45 cho ngoi ','2019-01-01','2021-01-01',12),
(3,2,1,1,'xe cho khach 36 cho ngoi ','2018-01-01','2022-06-01',5),(4,4,2,1,'xe cho khach 29 cho ngoi ','2018-01-01','2025-06-01',4);



