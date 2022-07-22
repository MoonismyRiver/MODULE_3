create database QuanLiSinhVien;
use QuanLiSinhVien;
create table Class(
classID int not null primary key auto_increment,
className varchar(60) not null,
startDate datetime not null,
status bit);

create table student(
StudentID int not null primary key auto_increment,
StudentName varchar(30) not null,
Address varchar(50),
Phone varchar(20),
Status bit,
ClassID int not null,
foreign key (ClassID) references Class(classID)
);
 create table Subject(
 SubID int not null auto_increment primary key,
 SubName varchar(30) not null ,
 Credit tinyint not null default 1 check (Credit >=1),
 status bit default  1);
 
 
 create table Mark(
 MarkID int not null auto_increment primary key ,
 SubID int not null ,
 StudentID int not null ,
 Mark float default 0 check(Mark between 0 and 100),
 Examtimes tinyint default 1,
 foreign key (SubID) references Subject(SubID),
 FOREIGN KEY (StudentId) REFERENCES Student (StudentId));


