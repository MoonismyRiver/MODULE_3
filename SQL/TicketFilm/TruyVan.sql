#2.Hiển thị danh sách các phim (chú ý: danh sách phải được sắp xếp theo trường Thoi_gian)				
select * from phim order by thoigian ASC;


#3.Hiển thị Ten_phim có thời gian chiếu dài nhất
select film.filmname,giochieu,'film dai nhat' as 'commnet'
from film
where giochieu = (select max(giochieu) from film);


#4.Hiển thị Ten_Phim có thời gian chiếu ngắn nhất

select phim.filmname,giochieu,'film dai nhat' as 'commnet'
from film
where thoigian = (select min(thoigian) from phim);

#5.Hiển thị danh sách So_Ghe mà bắt đầu bằng chữ ‘A’
select * from ghe
where GheID like 'A%';

#6.Sửa cột Trang_thai của bảng tblPhong sang kiểu nvarchar(25)			
ALTER TABLE phong
CHANGE COLUMN trangthai trangthai VARCHAR(20) NULL DEFAULT NULL ;

#7.Cập nhật giá trị cột Trang_thai của bảng tblPhong :			
update phong set trangthai = if(trangthai = '0', 'Đang sửa',if(trangthai ='1','Đang sử dụng','Unknow')) where PhongID >0;

#8.Hiển thị danh sách tên phim mà  có độ dài >15 và < 25 ký tự 			
	select * from phim
where CHAR_LENGTH(tenphim) between 15 and 25;

    
#9.Hiển thị Ten_Phong và Trang_Thai trong bảng tblPhong  trong 1 cột với tiêu đề ‘Trạng thái phòng chiếu’
SELECT concat(tenphong,' ',trangthai) as 'trạng thái phòng chiếu'
FROM phong;


#10.Tạo bảng mới có tên tblRank với các cột sau: STT(thứ hạng sắp xếp theo Ten_Phim), TenPhim, Thoi_gian
		CREATE TABLE tblRank(
	STT int(4) AUTO_INCREMENT PRIMARY KEY ,
    TenPhim VARCHAR(50) not null,
    Thoi_gian int not null
    );
    
INSERT INTO tblRank(TenPhim,Thoi_gian)
SELECT  fName,thoigian
FROM tblphim
ORDER BY fName;

        
#11.Trong bảng tblPhim :
#Thêm trường Mo_ta kiểu nvarchar(max)						
#Cập nhật trường Mo_ta: thêm chuỗi “Đây là bộ phim thể loại  ” + nội dung trường LoaiPhim										
#Hiển thị bảng tblPhim sau khi cập nhật				
#Cập nhật trường Mo_ta: thay chuỗi “bộ phim” thành chuỗi “film”
#Hiển thị bảng tblPhim sau khi cập nhật	


#12.Xóa tất cả các khóa ngoại trong các bảng trên.						

ALTER TABLE ghe 
DROP foreign key fk_1;
ALTER TABLE ve 
DROP foreign key fk_2,
DROP foreign key fk_3;

#13.Xóa dữ liệu ở bảng tblGhe
delete from ghe; 

#14.Hiển thị ngày giờ hiện tại và ngày giờ hiện tại cộng thêm 5000 phút

select now() from phim where phimID = 1;

select ADDTIME( 50000, now()) from phim where phimID = 1;

