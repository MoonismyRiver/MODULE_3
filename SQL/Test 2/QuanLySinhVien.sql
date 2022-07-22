create database Test2;
use Test2;

create table Students(
StudentID int not null primary key,
StudentName varchar(50),
Age int ,
Email varchar(100)
);

create table Subjects(
SubjectID int not null primary key,
SubjectName varchar(50)
);

create table Marks(
Mark int ,
SubjectID int ,
StudentID int,
primary key (SubjectID,StudentID),
foreign key (SubjectID) references Subjects(SubjectID),
foreign key (StudentID) references Students(StudentiD)
);

create table Classes(
ClassID int not null primary key ,
ClassName varchar(50)
);


create table ClassStudent(
StudentiD int not null ,
ClassID int,
primary key (ClassID,StudentID),
foreign key (StudentID) references Students(StudentiD),
foreign key (ClassID) references Classes(ClassID)
);






