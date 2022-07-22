use quanlisinhvien;
#Hiển thị tất cả các thông tin môn học (bảng subject) có credit lớn nhất.
SELECT *
FROM Subject
where credit = (select max(credit) from Subject);


#Hiển thị các thông tin môn học có điểm thi lớn nhất.
SELECT *
FROM  Mark M  join Subject Sub on M.SubId = Sub.SubId
WHERE M.Mark = (select max(credit) from Subject);


#Hiển thị các thông tin sinh viên và điểm trung bình của mỗi sinh viên, xếp hạng theo thứ tự điểm giảm dần
SELECT S.StudentId, S.StudentName, Sub.SubName, avg(M.mark) as 'diem trung binh'
FROM Student S join Mark M on S.StudentId = M.StudentId join Subject Sub on M.SubId = Sub.SubId
group by S.StudentId
order by avg(M.mark) desc ;

