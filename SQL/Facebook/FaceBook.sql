create database BaiTapFaceBook;
use BaiTapFaceBook;

create table Account(
     id int primary key,
     name varchar(255) not null,
     age int ,
     address varchar(255) not null
);
create table Post(
     MaBaiViet int primary key,
     TimePost date,
     NoiDung varchar(255),
     idAccount int  ,
     foreign key(idAccount) references Account(id)
);
create table LikePost(
      KindLike varchar(50) primary key,
      TimeLike date ,
      idAccount int  ,
       foreign key(idAccount) references Account(id),
       MaBaiViet int ,
       foreign key (MaBaiViet) references Post(MaBaiViet)
);
create table img(
      LinkImg varchar(255) primary key,
      MaBaiViet int ,
      foreign key (MaBaiViet) references Post(MaBaiViet)
);
create table Comment(
       MaCmt int primary key,
       TimePostCmt date,
       ContentCmt varchar(255),
	   idAccount int  ,
       foreign key(idAccount) references Account(id)
);
create table LikeComent (
       KindLikeCmt varchar(50) primary key,
       TimeLikeCmt date,
	    idAccount int  ,
       foreign key(idAccount) references Account(id),
       MaCmt int ,
       foreign key (MaCmt) references Comment(MaCmt)
);