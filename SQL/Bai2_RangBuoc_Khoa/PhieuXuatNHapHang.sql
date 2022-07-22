create database PhieuXuatNhapHang;
use PhieuXuatNhapHang;
create table NHACC(
MaNCC int not null primary key,
TenNCC varchar(60),
DIaCHi varchar (60),
SDT  varchar (20) unique 
);
create table VatTu(
MaVTU int not null primary key ,
TenVTU varchar(60)

);
create table DONDH(
SoDH int not null primary key,
NgayDh datetime,
MaNCC int ,
foreign key (MaNCC) references NHACC(MaNCC)

);

create table DonDHChiTiet(
MaVTU int not null,
SoDH int not null,
PRIMARY KEY(MaVTU,SoDH),
FOREIGN KEY(MaVTU) REFERENCES VatTu(MaVTU),
FOREIGN KEY(SoDH) REFERENCES DONDH(SoDH)
);

create table PhieuXuat(
SoPX int not null primary key,
Ngayxuat datetime not null
);

create table PhieuXuatChiTiet(
MaVTU int not null,
SoPX int not null,
DGXuat int,
SLXuat int ,
PRIMARY KEY(MaVTU,SoPX),
FOREIGN KEY(MaVTU) REFERENCES VatTu(MaVTU),
FOREIGN KEY(SoPX) REFERENCES PhieuXuat(SoPX));

create table PhieuNhap(
SoPN int not null primary key,
NgayNhap datetime not null
);
create table PhieuNhapChiTiet(
MaVTU int not null,
SoPN int not null,
DGNhap int,
SLNhap int ,
PRIMARY KEY(MaVTU,SoPN),
FOREIGN KEY(MaVTU) REFERENCES VatTu(MaVTU),
FOREIGN KEY(SoPN) REFERENCES PhieuNhap(SoPN));




