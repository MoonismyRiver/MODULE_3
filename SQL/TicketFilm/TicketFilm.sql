create database TicketFilm;
use TicketFilm;

Create table phong(
    PhongID int primary key,
    tenphong varchar(255),
    trangthai bit
);
create table ghe(
    GheID int primary key,
    PhongID int, 
    foreign key (PhongID) references phong(PhongID),
    soghe varchar(20)
);

create table Phim(
    PhimID int primary key not null,
    filmname varchar(50),
    loaifilm varchar(50),
    thoigian int(4)
);
create table Ve(
	PhimID int ,
    foreign key (PhimID) references Phim(PhimID),
	GheID int,
    foreign key (GheID) references ghe(GheID),
	thoigian datetime,
    trangthai varchar(40),
    primary key(PhimID,GheID)
);

INSERT INTO phim VALUES (1, 'Em bé Hà Nôi', 'Tâm lý',90),(2, 'Nhiệm vụ bất khả thi', 'Hành động',100),(3, 'Dị nhân', 'Viễn tưởng',90),(4, 'Cuốn theo chiều gió', 'Tình cảm',120);

INSERT INTO phong VALUES (1, 'Phòng chiếu 1', 1),(2, 'Phòng chiếu 2', 1),(3, 'Phòng chiếu 1', 0);

INSERT INTO ghe VALUES (1, 1, 'A3'),(2, 1, 'B5'),(3, 2, 'A7'),(4, 2, 'D1'),(5, 3, 'T2');

INSERT INTO ve VALUES (1, 1, '2008-10-20','Đã bán'),(1, 3, '2008-11-20','Đã bán'),(1, 4,'2008-12-23','Đã bán'),(2, 1, '2009-02-14','Đã bán'),(3, 1, '2009-02-14','Đã bán'),(2, 5, '2009-03-08','Chưa bán'),(2, 3, '2009-03-08','Chưa bán');
