create database quanlidiemsinhvien;
use quanlidiemsinhvien;

create table Khoa(
Makhoa int not null primary key,
TenKhoa varchar(50)
);

create table Lop(
MaLop int not null primary key,
TenLop varchar(100),
MaKhoa int,
foreign key (MaKhoa) references Khoa(MaKhoa)
);

create table Sinhvien(
maSV int not null primary key,
Hoten varchar(50),
ngaysinh datetime ,
hocbong bit,
gioitinh varchar(50),
Malop int,
foreign key (Malop) references Lop(maLop)
);

create table MonHoc(
maMH int not null primary key,
TenMH varchar(50),
SoTiet int
);

create table KetQua(
DiemThi int check (DiemThi between 0 and 10),
MaSV int not null,
MaMH int not null,
foreign key (MaSV ) references SinhVien(MaSV ),
foreign key (MaMH) references MonHoc(MaMH)

);

INSERT INTO Khoa
VALUES (01,'CNTT');
INSERT INTO Khoa
VALUES (02, 'NONGNGHIEP');
INSERT INTO Khoa
VALUES (03, 'NGANHANG');
INSERT INTO Khoa
VALUES (04, 'KINHTE');

INSERT INTO Lop
VALUES (1, 'C0322G1', 01);
INSERT INTO Lop
VALUES (2, 'NN1', 02);
INSERT INTO Lop
VALUES (3, 'NH1', 03);
INSERT INTO Lop
VALUES (4, 'KT1', 04);
INSERT INTO Lop
VALUES (5, 'KT2', 04);

INSERT INTO SinhVien
VALUES (1, 'Nguyen Quang An', '2002-4-4',1,'Nam',4);
INSERT INTO SinhVien
VALUES (2, 'Pham Thi Thanh', '1995-7-5',0,'Nu',5);
INSERT INTO SinhVien
VALUES (3, 'Tran Ngoc Diep', '2000-1-12',1,'Nu',2);
INSERT INTO SinhVien
VALUES (4, 'Nguyen Ngoc Nam', '1992-11-14',0,'Nam',3);
INSERT INTO SinhVien
VALUES (5, 'Tran Trung Quyet', '1998-12-15',1,'Nam',1);

INSERT INTO MonHoc
VALUES (1, 'SQL', 10);
INSERT INTO MonHoc
VALUES (2, 'Kinhtebien', 9);
INSERT INTO MonHoc
VALUES (3, 'Channuoi', 8);
INSERT INTO MonHoc
VALUES (4, 'NVuNganHang', 20);

INSERT INTO KetQua
VALUES (9,1,1);
INSERT INTO KetQua
VALUES (9,2,1);
INSERT INTO KetQua
VALUES (9,3,4);
INSERT INTO KetQua
VALUES (9,4,2);
INSERT INTO KetQua
VALUES (10,5,4);




