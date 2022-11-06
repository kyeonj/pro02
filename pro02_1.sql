create database myshop;
use myshop;
create table custom(
	cusId varchar(13) primary key,
	cusPw varchar(200) not null,
    cusName varchar(50) not null,
    address varchar(500) not null,
    tel varchar(14) not null,
    regDate datetime default now(),
    point int default 0,
    level int default 0,
    visited int default 0
);
select * from custom;
create table notice(
	notiNo int primary key auto_increment,
    title varchar(200) not null,
    content varchar(1000) not null,
    author varchar(20) not null,
    resDate datetime default now()
);
select * from notice;
select * from custom;
test1 1234 01011112222
insert into notice(title,content, author) values("테스트제목1", "데스트1 내용입니다","admin");
insert into notice(title,content, author) values("테스트제목2", "데스트2 내용입니다","admin");
insert into notice(title,content, author) values("테스트제목3", "데스트3 내용입니다","admin");
commit;

create table category(
	cateNo int primary key auto_increment,
	cateName varchar(50)
);
insert into category(cateName) values ("하드케이스");
insert into category(cateName) values ("범퍼케이스");
insert into category(cateName) values ("젤리케이스");
insert into category(cateName) values ("스마트톡");
select * from category;
commit;

create table product(
	proNo int primary key auto_increment,
	cateNo int not null,
	proName varchar(40) not null,
	proSpec varchar(500),
	oriPrice int not null,
	discountRate double not null,
	proPic varchar(200),
	proPic2 varchar(200)
);
commit;
select * from product;