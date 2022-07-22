create database QuanLiBanHang;
use QuanLiBanHang;

create table Customer(
cID int not null primary key auto_increment,
cName varchar(60) not null,
cAge int not null
);

create table Product(
pID int not null primary key auto_increment,
pName varchar(30) not null
);

 create table orderTBL(
 oID int not null auto_increment primary key,
 cID int not null ,
 oDate datetime ,
 oTotalPrice float,
 foreign key (cID) references Customer(cID)
 );
 
 
 create table OrderDetail(
 oID int not null,
 pID int not null,
primary key (oID,pID),
FOREIGN KEY (oID) REFERENCES orderTBL(oID),
 FOREIGN KEY (pID) REFERENCES Product(pID)
);

