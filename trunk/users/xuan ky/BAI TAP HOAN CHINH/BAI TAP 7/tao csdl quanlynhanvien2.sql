-- cau lenh tao co so du lieu
--create database quanlynhanvien2

-- cau lenh tao bang 'phongban' cho CSDL, primary key = maphg(bang ma utf8)
create table quanlynhanvien2.phongban 
(
	tenphg		varchar(40),
	maphg		int,
	trphg		varchar(9),
	ng_nhanchuc	date,
	constraint pk_maphg primary key(maphg)
) engine = InnoBD default charset = utf8 collate = utf8_unicode_ci;

-- cau lenh tao bang 'diadiem_phg' cho CSDL, primary key = maphg, diadiem (bang ma utf8)
create table quanlynhanvien2.diadiem_phg
(
	maphg		int,
	diadiem		varchar(50),
	constraint pk_diadiemphg primary key (maphg, diadiem)
) engine = InnoBD default charset = utf8 collate = utf8_unicode_ci;

-- cau lenh tao bang 'nhanvien' cho csdl, primary key = manv (bang ma utf8)
create table quanlynhanvien2.nhanvien
(
	honv 		varchar(20),
	tenlot		varchar(20),
	tennv		varchar(20),
	manv		varchar(9),
	ngsinh		date,
	dchi		varchar(100),
	phai		varchar(3),
	luong		float,
	ma_nql		varchar(9),
	phg			int,
	constraint pk_nhanvien primary key (manv)
)engine = InnoBD default charset = utf8 collate = utf8_unicode_ci;

-- cau lenh tao bang 'dean' cho CSDL , primary key = mada (bang ma utf8)
create table quanlynhanvien2.dean
(
	tenda		varchar(100),
	mada		int,
	ddiem_da	varchar(50),
	phong		int,
	constraint pk_dean primary key (mada)
)engine = InnoBD default charset = utf8 collate = utf8_unicode_ci;

-- cau lenh tao bang 'thannhan' cho csdl, primary key = ma_nvien, tentn (bang ma utf8)
create table quanlynhanvien2.thannhan
(
	ma_nvien		varchar(9),
	tentn			varchar(50),
	phai			varchar(3),
	ngsinh			date,
	quanhe			varchar(20),
	constraint pk_thannhan primary key (ma_nvien, tentn)
)engine = InnoBD default charset = utf8 collate = utf8_unicode_ci;

-- cau lenh tao bang 'phancong' cho CSDL, primary key = ma_nvien, soda (bang ma uf8)
create table quanlynhanvien2.phancong 
(
	ma_nvien		varchar(9),
	soda			int,
	thoigian		date,
	constraint pk_phancong primary key (ma_nvien, soda)
)engine = InnoBD default charset = utf8 collate = utf8_unicode_ci;

-- da tao xong cac ban cho csdl - den buoc tao khoa ngoai cho cac bang
-- theo so do lien he giu cac bang, lan luot dung cac lenh sau de tao khoa ngoai bang cau lenh

-- 1. tao khoa ngoai cho hai bang 'phongban' va 'ddiem_phg' (quan he 1 - n)
alter table diadiem_phg add constraint fk_phongban_ddiem_phg foreign key (maphg) references phongban(maphg)

-- 2. tao khoa ngoai cho 2 bang 'nhanvien - phong ban' (quan he n-1)
alter table nhanvien add constraint fk_nhanvien_phongban foreign key (phg) references phongban(maphg)

-- 3. tao khoa ngoai cho 2 bang 'nhan vien - phong ban (quan he 1 - n) can hoi thay lai (ma_nql hay manv)
alter table phongban add constraint fk_phongban_nhanvien foreign key (trphg) references nhanvien(manv)

-- 4. tao khoa ngoai cho 2 bang 'thannhan - nhanvien' (quan he 1-n) 
alter table thannhan add constraint fk_thannhan_nhanvien foreign key (ma_nvien) references nhanvien(manv)

-- 5. tao khoa ngoai cho 2 bang 'phancong - nhanvien' (quan he 1-n)
alter table phancong add constraint fk_phancong_nhanvien foreign key (ma_nvien) references nhanvien(manv)

-- 6. tao khoa ngoai cho 2 bang 'phancong - dean' (quan he 1-n)
alter table phancong add constraint fk_phancong_dean foreign key (soda) references dean(mada)

-- 7. tao khoa noi bo cho bang nhanvien
alter table nhanvien add constraint fk_nhanvien_nhanvien foreign key (ma_nql) references nhanvien(manv)


-- NHAP LIEU CHO TUNG BANG
-- 1. nhap lieu cho bang 'phongban'
insert into quanlynhanvien2.phongban (tenphg, maphg, trphg, ng_nhanchuc) values
	('Quản Lý',1,NULL,'1971-06-19'),
	('Tổ Chức',2,NULL,'2001-01-15'),
	('Điều Hành',4,NULL,'1985-01-01'),
	('Nghiên Cứu',5,NULL,'1978-05-22')

-- 2. nhap lieu cho bang 'diadiem_phg'
insert into quanlynhanvien2.diadiem_phg (maphg, diadiem) values	
	(1,'Vũng Tàu'),
	(2,'TP HCM'),
	(2,'Nha Trang'),
	(4,'TP HCM'),
	(5,'Hà Nội'),
	(5,'TP HCM')
	
-- 3 Nhap lieu cho bang 'nhanvien'
insert into quanlynhanvien2.nhanvien (honv, tenlot, tennv, manv, ngsinh, dchi, phai, luong, ma_nql, phg) values
	('Cao','Si','Ki','123123456','1986-08-09','123 Lê Lợi - Quận 1 - TP HCM','Nam',15000,NULL,5),
	('Đinh','Bá','Tiến','123456789','1955-01-09','731 Trần Hưng Đạo - Quận 1 - TP HCM','Nam',30000,NULL,5),
	('Trương','Lê','Đoan','147852369','1986-05-15','22/41/1 Lê Văn Thọ- Phường 11 - Gò Vấp','Nữ',16500,NULL,1),
	('Nguyễn','Thanh','Tùng','333445555','1945-12-08','638 Nguyễn Văn Cừ - Quận 5 - TP HCM','Nam',40000,NULL,5),
	('Lê','Huỳnh','Đức','666884444','1986-06-01','126 Nguyễn Văn Cừ - Quận 5 - TP HCM','Nam',27000,NULL,1),
	('Vương','Ngọc','Quyên','888665555','1965-09-15','414 Nơ Trang Long - Quận Bình Thạnh - TP HCM','Nam',29400,NULL,4),
	('Lê','Thị','Nhàn','987654321','1931-06-20','291 Hồ Văn Huê - Quận Phú Nhuận - TP HCM','Nữ',43000,NULL,5),
	('Võ','Đức','Minh','987987987','1985-09-16','414 Nơ Trang Long - Quận Bình Thạnh - TP HCM','Nam',30000,NULL,5),
	('Bùi','Thụy','Vũ','999887777','1958-07-19','332 Nguyễn Thái Học - Quận 1 - TP HCM','Nam',25000,NULL,4)
	
-- 4 Nhap lieu cho bang 'dean'
insert into quanlynhanvien2.dean (tenda, mada, ddiem_da, phong)values	
	('Sản Phẩm Y', 2, 'Nha Trang', 1),
	('Sản Phẩm Z', 3, 'TP HCM', 5),
	('Sản Phẩm X', 5, 'Vũng Tàu', 1),
	('Tin Học Hóa', 10, 'Hà Nội', 4),
	('Hóa Học', 40, 'Biên Hòa', 5)
	
-- 5 Nhap lieu cho bang 'phancong'
insert into quanlynhanvien2.phancong(ma_nvien, soda, thoigian)values	
	('123123456', 2, 1),
	('123123456', 40, 2),
	('123456789', 40, 3),
	('147852369', 40, 4),
	('333445555', 2, 5),
	('333445555', 40, 6),
	('666884444', 40, 7),
	('888665555', 2, 8),
	('987654321', 40, 9),
	('987987987', 40, 10),
	('999887777', 40, 11)
	
-- 6 Nhap lieu cho bang 'thannhan'
insert into thannhan(ma_nvien, tentn, phai, ngsinh, quanhe) values	
	('333445555','Châu Long','Nam','2005-01-02','Chồng'),
	('333445555','Khang','Nam','1973-10-25','Con Trai'),
	('333445555','Ngọc Phi','Nữ','1976-04-05','Con Gái'),
	('987654321','Đăng','Nam','1932-02-29','Chồng'),
	('999887777','Toàn','Nam','1986-01-02','Chồng')
	
	
/* Cap nhat thong tin field TrPHG cho table PhongBan thoa rang buoc khoa ngoai */
update phongban set trphg='666884444' where maphg=1
update phongban set trphg='987987987' where maphg=2
update phongban set trphg='123456789' where maphg=4
update phongban set trphg='333445555' where maphg=5

/* Cap nhat thong tin field Ma_NQL cho table NhanVien thoa rang buoc khoa ngoai */
update nhanvien set ma_nql='123456789' where manv='123123456'
update nhanvien set ma_nql='123456789' where manv='123456789'
update nhanvien set ma_nql='147852369' where manv='147852369'
update nhanvien set ma_nql='123456789' where manv='333445555'
update nhanvien set ma_nql='666884444' where manv='666884444'
update nhanvien set ma_nql='999887777' where manv='888665555'
update nhanvien set ma_nql='123456789' where manv='987654321'
update nhanvien set ma_nql='123456789' where manv='987987987'
update nhanvien set ma_nql='123456789' where manv='999887777'




/* Xoa 1 record trong table PhanCong: khong cho nhan vien Bui Thuy Vu tham gia du an Hoa Hoc nua*/
delete from phancong where ma_nvien='999887777' and soda=40

	
