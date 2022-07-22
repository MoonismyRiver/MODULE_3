#cau 3: 
select * from dongxe where songuoingoi > 5;

#cau 4:Liệt kê thông tin của các nhà cung cấp đã từng đăng ký cung cấp những dòng xe thuộc hãng xe “Toyota” 

select N.manhacc, N.tennhacc,N.diachi,N.Sodt,N.masothue,D.hangxe
from dangkycungcap A join dongxe D on A.dongxe = D.dongxe join nhacungcap N on A.manhacc=N.manhacc
where D.hangxe = 'toyota';

# cau 5:Liệt kê thông tin toàn bộ nhà cung cấp được sắp xếp tăng dần theo tên nhà cung cấp và giảm dần theo mã số thuế

select * from nhacungcap
order by tennhacc ASC;

select * from nhacungcap
order by masothue DESC;

#cau 6:Đếm số lần đăng ký cung cấp phương tiện tương ứng cho từng nhà cung cấp với yêu cầu chỉ đếm cho những nhà cung cấp thực hiện đăng ký cung cấp có ngày bắt đầu cung cấp là “20/11/2015”

select  N.manhacc,N.tennhacc,count(maDKcc) as 'so lan dang ky cung cap'
From dangkycungcap DKCC join nhacungcap N on DKCC.manhacc= N.manhacc
where DKCC.BdCCdate > '2019-12-15'
group by N.manhacc;

#cau 7:Liệt kê tên của toàn bộ các hãng xe có trong cơ sở dữ liệu với yêu cầu mỗi hãng xe chỉ được liệt kê một lần
select dongxe.hangxe from dongxe group by dongxe.hangxe;

#cau 8:
select DKCC.MaDKCC, DKCC.MaNhaCC, NCC.TenNhaCC, NCC.DiaChi, NCC.MaSoThue, LDV.TenLoaiDV, MP.DonGia,DX.HangXe, DKCC.bdccdate, DKCC.ktccdate,count(maDKCC)
from dangkycungcap DKCC join Nhacungcap NCC on DKCC.manhacc = NCC.manhacc and DKCC.dongxe = NCC.dongxecc join dongxe DX on DKCC.dongxe = DX.dongxe join loaidichvu LDV on DKCC.maloaidv = LDV.maloaiDV join mucphi MP on DKCC.mamucphi = MP.mamucphi
group by NCC.manhacc;

# cau 9: Liệt kê thông tin của các nhà cung cấp đã từng đăng ký cung cấp phương tiện thuộc dòng xe “Hiace” hoặc từng đăng ký cung cấp phương tiện thuộc dòng xe “Cerato”

select DKCC.MaDKCC, DKCC.MaNhaCC, NCC.TenNhaCC, NCC.DiaChi, NCC.MaSoThue, LDV.TenLoaiDV, MP.DonGia,DX.HangXe, DKCC.bdccdate, DKCC.ktccdate
from dangkycungcap DKCC join Nhacungcap NCC on DKCC.manhacc = NCC.manhacc and DKCC.dongxe = NCC.dongxecc join dongxe DX on DKCC.dongxe = DX.dongxe join loaidichvu LDV on DKCC.maloaidv = LDV.maloaiDV join mucphi MP on DKCC.mamucphi = MP.mamucphi
where DX.dongxe = 'xe cho khach 36 cho ngoi ';

# cau 10:Liệt kê thông tin của các nhà cung cấp chưa từng thực hiện đăng ký cung cấp phương tiện lần nào cả.

select * from nhacungcap
where not exists (select NCC.TenNhaCC, NCC.DiaChi, NCC.MaSoThue from dangkycungcap DKCC join Nhacungcap NCC on DKCC.manhacc = NCC.manhacc and DKCC.dongxe = NCC.dongxecc 
where NCC.manhacc = DKCC.manhacc );

