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
alter table notice add column visited int default 0;
select * from custom;
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

create table wearing(
	proNo int primary key,
    amount int
);
select * from wearing;
create table sales(
	saleNo int primary key auto_increment,
    cusId varchar(13) not null,
    proNo int not null,
    amount int not null,
    saleDate datetime default now(),
    parselNo int,
    salePayNo int
);
select * from sales;
create table payment(
	salePayNo int primary key auto_increment,
    payMethod varchar(20),
    payCom varchar(50),
    cardNum varchar(40),
    payAmount int
);
select * from payment;
create table parsel(
	parselNo int primary key auto_increment,
    parselAddr varchar(500),
    cusTel varchar(14),
    parselCompany varchar(50),
    parselTel varchar(14),
    parselState int default 0
);    
select * from parsel;
-- 학원에서 실행할것 
alter table parsel add column baleCode varchar(24);
create table cart(
	cartNo int primary key auto_increment,
    proNo int,
    cusId varchar(13)
);
select * from cart;
drop table cart;
delete from cart where cartNo=4;
create table qnaa(
    no int primary key auto_increment,
    title varchar(100) not null,
    content varchar(1000) not null,
    author varchar(20) not null,
    resdate datetime default now(),
    lev int default 0,            -- 깊이
    parno int not null,          -- 부모글 번호
    sec char(1)                     -- 비밀글 여부
);
select * from qnaa;
insert into qnaa(title, content, author, lev, parno, sec)  values ("문의 합니다. 테스트 글1", "문의 합니다. 테스트 글1의 내용입니다.", "test1", 0, 1, "N");
alter table qnaa add column visited int default 0; 
alter table qnaa modify column parno int default ;
select * from qnaa;
drop table qnaa;
select no from qnaa order by no desc limit 1;
select no from qnaa order by resdate desc limit 1;
update qnaa set parno=2 where no=2;
commit;
select no from qnaa order by resdate desc limit 1;
delete from qnaa where no >= 6;

update product set proNo=2 where proNo=3;
select * from product;
update wearing set proNo=2 where proNo=3;
select * from wearing;
select * from board;
select * from product order by regdate desc limit 4;
alter table product add column scnt int default 0; 
alter table product add column regdate datetime default now();