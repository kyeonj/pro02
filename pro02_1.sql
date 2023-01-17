create database myshop;
use myshop;

/*회원 테이블*/
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

/* 공지사항 테이블 */
create table notice(
	notiNo int primary key auto_increment,
    title varchar(200) not null,
    content varchar(1000) not null,
    author varchar(20) not null,
    resDate datetime default now()
);
/*공지사항 컬럼추가(읽은횟수)*/
alter table notice add column visited int default 0;

select * from notice;

select * from custom;

commit;

/*카테고리 테이블*/
create table category(
	cateNo int primary key auto_increment,
	cateName varchar(50)
);
/*카테고리 내용추가*/
insert into category(cateName) values ("하드케이스");
insert into category(cateName) values ("범퍼케이스");
insert into category(cateName) values ("젤리케이스");
insert into category(cateName) values ("스마트톡");

select * from category;
commit;

/*상품등록 테이블*/
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

/*판매내역 테이블*/
create table wearing(
	proNo int primary key,
    amount int
);
select * from wearing;

/*판매 테이블*/
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

/*결제 테이블*/
create table payment(
	salePayNo int primary key auto_increment,
    payMethod varchar(20),
    payCom varchar(50),
    cardNum varchar(40),
    payAmount int
);
select * from payment;

/*배송 테이블*/
create table parsel(
	parselNo int primary key auto_increment,
    parselAddr varchar(500),
    cusTel varchar(14),
    parselCompany varchar(50),
    parselTel varchar(14),
    parselState int default 0
);    
select * from parsel;
/*배송 테이블 컬럼추가(배송번호)*/
alter table parsel add column baleCode varchar(24);

/* 장바구니 테이블 */
create table cart(
	cartNo int primary key auto_increment,
    proNo int,
    cusId varchar(13)
);
select * from cart;

/* 질문답변 테이블 */
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
/* 질문답변테이블 컬럼추가 (읽은횟수/부모글번호*/
alter table qnaa add column visited int default 0; 
alter table qnaa modify column parno int default ;

/*insert into qnaa(title, content, author, lev, parno, sec)  values ("문의 합니다. 테스트 글1", "문의 합니다. 테스트 글1의 내용입니다.", "test1", 0, 1, "N");*/

select * from qnaa;
drop table qnaa;
select no from qnaa order by no desc limit 1;
select no from qnaa order by resdate desc limit 1;
update qnaa set parno=2 where no=2;
commit;
select no from qnaa order by resdate desc limit 1;
delete from qnaa where no >= 6;


update notice set content="공지사항3에 대한 내용" where notiNo=3;
update product set proNo=2 where proNo=3;
select * from product;
update wearing set proNo=2 where proNo=3;
select * from wearing;
select * from board;
select * from product order by regdate desc limit 4;
alter table product add column scnt int default 0; 
alter table product add column regdate datetime default now();