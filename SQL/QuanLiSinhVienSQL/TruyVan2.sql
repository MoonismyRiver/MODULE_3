use QuanLiSinhVien;

#Hiển thị tất cả các sinh viên có tên bắt đầu bảng ký tự ‘h’
SELECT *
FROM Student where StudentName  like 'H%';

#Hiển thị các thông tin lớp học có thời gian bắt đầu vào tháng 12
SELECT *
FROM class
WHERE month(startDate)=12;

#Hiển thị tất cả các thông tin môn học có credit trong khoảng từ 3-5.
SELECT *
FROM Subject
WHERE Credit between 3 and 5;

#Thay đổi mã lớp(ClassID) của sinh viên có tên ‘Hung’ là 2.
update student set ClassID = 2 where StudentName="Hung";
select * from student;

#Hiển thị các thông tin: StudentName, SubName, Mark. Dữ liệu sắp xếp theo điểm thi (mark) giảm dần. nếu trùng sắp theo tên tăng dần.
SELECT S.StudentId, S.StudentName, Sub.SubName, M.Mark
FROM Student S join Mark M on S.StudentId = M.StudentId join Subject Sub on M.SubId = Sub.SubId
order by mark desc;