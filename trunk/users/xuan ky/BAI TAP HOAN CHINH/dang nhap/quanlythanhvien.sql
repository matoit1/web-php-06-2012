--tạo csdl quanlythanhvien
create database quanlythanhvien

--tạo bảng thông tin thành viên (thongtinthanhvien)
create table thongtinthanhvien (
	stt int,
	ten varchar(50),
	pass varchar(100),
	roleid int,
	email varchar(50),
	dienthoai varchar (15),
	
	constraint pk_thongtinnhanvien primary key (ten, roleid )
	
	
)engine = InnoBD default charset= utf8 collate = utf8_unicode_ci; 

--tạo bảng vai trò của thành viên vaitrothanhvien
create table vaitrothanhvien (
	roleid int,
	ngaycap date,
	constraint pk_vaitrothanhvien primary key (roleid)

)engine = InnoBD default charset = utf8 collate utf8_unicode_ci;

--tạo khoá ngoại cho 2 bảng 1 - n (vaitrothanhvien - thongtinthanhvien)
alter table thongtinthanhvien add constraint fk_vttv_tttv foreign key (roleid) references vaitrothanhvien(roleid)
--nhập liệu cho bảng vai trò thành viên
insert into vaitrothanhvien(roleid, ngaycap)value
	(1, 'admin'),
	(2, 'mod'),
	(3, 'support'),
	(4, 'commiter')
	(5, 'register')
--nhập liệu cho bảng thongtinthanhvien
insert into (stt, ten, pass, roleid, email, dienthoai)value	
	(1,'vanlam','abcd1234',1,'vanlam@yahoo.com','0909123456'),
	(2,'khoanam','123456',2,'khoanam@gmail.com','0907123456'),
	(3,'hoanganh','6789',2,'hoanganh@hotmail.com','0906123456'),
	(4,'ngochai','54321',2,'ngochai@gmail.com','0977123456'),
	(5,'trankhanh','abcdef',3,'trankhanh@yahoo.com','0923123456'),
	(6,'ngocha','qwerty',3,'ngocha@yahoo.com','0986123456'),
	(7,'ngoctrinh','loveyou',3,'ngoctrinh@yahoo.com','0999123456'),
	(8,'duchoa','forever',3,'duchoa@gmail.com','0906123456'),
	(9,'xuanmai','iloveyou',4,'xuanmai@yahoo.com','0913123456'),
	(10,'ngoccanh','nolove',5,'ngoccanh@gmail.com','0918123456'),
	(11,'love2love','noname',4,'loveu@yahoo.com','0952123456'),
	(12,'mykim','123456789',4,'mykim@yahoo.com','0978123456'),
	(13,'xuanthu','abcd123456789',5,'xuanthu@gmail.com','0904123456'),
	(14,'ngoctrang','cdefrgh',5,'ngoctrang@yahoo.com','0972123456'),
	(15,'lamhung','mnopkl',3,'lamhung@gmail.com','0984123456'),
	(16,'vinhkhang','lovely',3,'vinhkhanh@yahoo.com','0979123456'),
	(17,'ngocvinh','123456mnopq',4,'ngocvinh@gmail.com','0953123456'),
	(18,'kieuoanh','mnbvcxz',5,'kieuoanh@yahoo.com','0986120056')