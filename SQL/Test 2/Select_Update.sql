# 1.Hien thi danh sach tat ca cac hoc vien 
select*from students;

#2.Hien thi danh sach tat ca cac mon hoc
select*from subjects;

#3.Tinh diem trung binh 

select StudentID , studentname,avg(mark) from students;

#4.Hien thi mon hoc nao co hoc sinh thi duoc diem cao nhat


#5.Danh so thu tu cua diem theo chieu giam
select*from marks order by Mark desc;

#6.Thay doi kieu du lieu cua cot SubjectName trong bang Subjects thanh nvarchar(max)
ALTER TABLE Subjects
CHANGE COLUMN SubjectName 
SubjectName nvarchar(255);

#7.Cap nhat them dong chu « Day la mon hoc «  vao truoc cac ban ghi tren cot SubjectName trong bang Subjects


#8.Viet Check Constraint de kiem tra do tuoi nhap vao trong bang Student yeu cau Age >15 va Age < 50
alter table students add check (age>15 and age<50);

#10.Xoa hoc vien co StudentID la 1
delete from classstudent where StudentID=1;
delete from marks where StudentID=1;
delete from Students where StudentID=1;

#11.Trong bang Student them mot column Status co kieu du lieu la Bit va co gia tri Default la 1
alter table Students add column `status` bit default 1;

#12.Cap nhap gia tri Status trong bang Student thanh 0
 update students set status=0 where studentID>0;
