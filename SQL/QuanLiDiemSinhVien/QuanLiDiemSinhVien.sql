#Câu 5: Lập danh sách sinh viên có họ ‘Trần’
select* from SinhVien where hoten like'Tran%';

#Câu 6: Lập danh sách sinh viên nữ có học bổng
select* from SinhVien where gioitinh='Nu' and hocbong=1;

#Câu 7: Lập danh sách sinh viên nữ hoặc danh sách sinh viên có học bổng
select* from SinhVien where gioitinh='Nu' or hocbong=1;

#Câu 8: Lập danh sách sinh viên có năm sinh từ 1999 đến 2010. Danh sách cần các thuộc tính của quan hệ SinhVien
select* from SinhVien where year(ngaysinh) between 1999 and 2010;

#Câu 9: Liệt kê danh sách sinh viên được sắp xếp tăng dần theo MaSV
select* from SinhVien order by MaSV asc;

#Câu 10: Liệt kê danh sách sinh viên được sắp xếp giảm dần theo HocBong
select* from SinhVien order by hocbong desc;

#Ví du 12: Lập danh sách sinh viên có học bổng của khoa CNTT.
SELECT hoten , gioitinh, hocbong, tenkhoa
	FROM sinhvien       
	INNER JOIN lop
	ON SINHVIEN.Malop = lop.malop
    INNER JOIN khoa
	ON lop.makhoa = khoa.makhoa
    where tenkhoa="CNTT"
        ;

#Câu 14: Cho biết số sinh viên của mỗi lớp
SELECT Tenlop, COUNT(MaSV) AS 'Số lượng học viên lớp'
FROM sinhvien       
	INNER JOIN lop
	ON SINHVIEN.Malop = lop.malop
GROUP BY Tenlop;


#Câu 15: Cho biết số lượng sinh viên của mỗi khoa.
SELECT Tenkhoa, COUNT(MaSV) AS 'Số lượng học viên khoa'
FROM sinhvien       
	INNER JOIN lop
	ON SINHVIEN.Malop = lop.malop
    INNER JOIN khoa
	ON lop.makhoa = khoa.makhoa
GROUP BY Tenkhoa;


#Câu 16: Cho biết số lượng sinh viên nữ của mỗi khoa.
SELECT Tenkhoa, COUNT(MaSV and SInhvien.gioitinh='Nu') AS 'Số lượng học viên nữ khoa'
FROM sinhvien       
	INNER JOIN lop
	ON SINHVIEN.Malop = lop.malop
    INNER JOIN khoa
	ON lop.makhoa = khoa.makhoa
    GROUP BY Tenkhoa
;


#Câu 17: Cho biết tổng tiền học bổng của mỗi lớp


#Câu 18: Cho biết tổng số tiền học bổng của mỗi khoa

 
#Câu 19: Lập danh sánh những khoa có nhiều hơn 100 sinh viên. Danh sách cần: MaKhoa, TenKhoa, Soluong
SELECT  khoa.Makhoa,khoa.TenKhoa, COUNT(MaSV) AS 'Số lượng học viên khoa'
FROM sinhvien       
	INNER JOIN lop
	ON SINHVIEN.Malop = lop.malop
    INNER JOIN khoa
	ON lop.makhoa = khoa.makhoa
	GROUP BY khoa.Tenkhoa
having COUNT(MaSV)>100;
    

#Câu 20: Lập danh sánh những khoa có nhiều hơn 50 sinh viên nữ. Danh sách cần: MaKhoa, TenKhoa, Soluong
SELECT  khoa.Makhoa,khoa.TenKhoa, COUNT(MaSV) AS 'Số lượng học viên khoa'
FROM sinhvien       
	INNER JOIN lop
	ON SINHVIEN.Malop = lop.malop
    INNER JOIN khoa
	ON lop.makhoa = khoa.makhoa
	GROUP BY khoa.Tenkhoa
having COUNT(MaSV)>100;

#Câu22: Lập danh sách sinh viên có học bổng cao nhất
select* from SinhVien where hocbong=(select max(hocbong) from Sinhvien);

#Câu 23: Lập danh sách sinh viên có điểm thi môn toán cao nhất
select* from SinhVien order by hocbong desc;

