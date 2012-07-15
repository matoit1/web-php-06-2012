-- cau lenh tao CSDL
create database quanlynhanvien

-- cau lenh tao table phongban, gom co 4 fields, khoa chinh la maphg
create table phongban
(
	tenphg		varchar(40),
	maphg		int,
	trphg		varchar(9),
	ng_nhanchuc	date,
	constraint pk_phongban primary key(maphg)
)

-- cau lenh tao table ddiem_phg, khoa chinh la 2 fileds maphg, diadiem
create table ddiem_phg
(
	maphg		int,
	diadiem		varchar(50),
	constraint pk_ddiem_phg primary key(maphg, diadiem)	
)

-- cau lenh tao khoa ngoai (1-N) giua 2 table phongban(maphg) va table ddiem_phg(maphg)
alter table ddiem_phg add constraint fk_ddiem_phg_phongban
foreign key(maphg) references phongban(maphg)

-- nhap du lieu cho table PHONGBAN  theo de bai
insert into phongban(tenphg, maphg, trphg, ngnhanchuc) values('Quan Ly',1,null,'1971-06-19')
--
--
--

-- nhap lieu cho table DDIEM_PHG theo de bai
insert into ddiem_phg (maphg, diadiem) values(1, 'Vung Tau')
insert into ddiem_phg (maphg, diadiem) values(2, 'TPHCM')

