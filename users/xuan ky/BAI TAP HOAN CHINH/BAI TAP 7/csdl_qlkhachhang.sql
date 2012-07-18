-- tao CSDL 'quanlykhachhang'
create database quanlykhachhang
create table quanlykhachhang.thongtinkhachhang
(
	id		int,
	ho		varchar(15),
	tenlot	varchar(15),
	tenkh	varchar(15),
	constraint pk_thongtinkh primary key (id)
	
)engine = InnoBD default charset = utf8 collate = utf8_unicode_ci;

-- CSDL con thieu mot so field -- su dung cau lenh add them mot so cot vao bang nay
	-- sodt	varchar(15),
	-- email	varchar(50),
	-- dchi	varchar(100),
-- su dung cau lenh: alter [ten bang] add column [tencot](keiudulieu)
alter quanlykhachhang.thongtinkhachhang add column sodt varchar(15) after tenkh
alter quanlykhachhang.thongtinkhachhang add column email varchar(50) after sodt
alter quanlykhachhang.thongtinkhachhang add column dchi varchar(100) after email