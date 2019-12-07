create table member (
	id varchar(10) not null,
	password varchar(10) not null,
	name varchar(10) not null,
	gender varchar(4),
	birth varchar(10) not null,
	mail varchar(30),
	phone varchar(20) not null,
	address varchar(90),
	primary key(id)
) default CHARSET=utf8;