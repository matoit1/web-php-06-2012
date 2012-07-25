create table table1
(
	a1 	int,
	a2	int,
	a3	int,
	index(a1,a2,a3)
)

create table table2
(
	b1	int,
	b2	int,
	index(b1,b2)
)

alter table table1 add constraint fk_table1_table2 foreign key (a1,a2) references table2(b1,b2)