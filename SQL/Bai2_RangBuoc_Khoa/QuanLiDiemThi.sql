CREATE DATABASE QuanLyDiemThi;
use QuanLyDiemThi;

create table Hocsinh(
MaHS int primary key,
TenHS varchar(100),
NgaySinh datetime,
Lop varchar(20),
GT varchar(20));

create table monhoc(
MaMH int primary key,
tenMH varchar(50));

create table bangdiem(
maHS int,
maMH int,
DiemThi int ,
NgayKT datetime,
primary key (maHS,MaMH),
foreign key (maHS) references Hocsinh(MaHS),
foreign key (maMH) references monhoc(MaMH));

create table giaovien(
MaGV varchar(20) primary key,
TenGV varchar(20),
SDT varchar(10));

alter table monhoc add MaGV varchar(20);
ALTER TABLE monhoc ADD CONSTRAINT FK_MaGV FOREIGN KEY (MaGV) REFERENCES giaovien(MaGV);