--MAIN MEMBER
create table member (
id varchar2(12)primary key,
password varchar2(20) not null,
name varchar2(10) not null,
age varchar2(12) not null,
gender varchar2(4) not null,
email varchar2(40) not null,
phone varchar2(20) not null,
exercise varchar2(1000) not null,
question varchar2(6) not null,
answer varchar2(20) not null
);
 member values('test', '1234', 'test','19910101', 'M', 'test@test.com', '1111111111', 'test', 'test','test');
 
 --BOARD
 create sequence freeBoard_seq
	start with 1
	increment by 1
	minvalue 1
	maxvalue 10000;

create sequence qnaBoard_seq
	start with 1
	increment by 1
	minvalue 1
	maxvalue 10000;
	
create table freeBoard(
num number primary key,
id varchar2(12) not null,
password varchar2(20) not null,
name varchar2(20) not null,
title varchar2(50) not null,
reg_date date,
ref number,
re_step number,
re_level number,
readcount number,
content varchar2(1000) not null
);

create table qnaBoard(
num number primary key,
id varchar2(12) not null,
password varchar2(20) not null,
name varchar2(20) not null,
title varchar2(50) not null,
category char(1) not null, 
reg_date date,
ref number,
re_step number,
re_level number,
readcount number,
content varchar2(1000) not null
);

alter table qnaBoard modify(title varchar2(50));
alter table freeBoard modify(title varchar2(50));
select * from freeBoard;
select * from QNABOARD;

--MANAGEMENT
create table food(
	name varchar2(20) primary key,
	calory number not null
);

insert into food values('음식1', 10);
insert into food values('음식2', 20);
insert into food values('음식3', 30);
insert into food values('음식4', 40);
insert into food values('음식5', 50);

commit

create table exercise(
	name varchar2(40) primary key,
	stand number(20) not null,
	inc number(20) not null
);

select * from exercise;

insert into exercise values('running', 500, 100);
insert into exercise values('walking', 100, 20);
insert into exercise values('bicycle', 400, 80);
insert into exercise values('swimming', 350,70);
insert into exercise values('mountaineering', 350,70);
insert into exercise values('benchpress', 400,100);
insert into exercise values('burpeetest', 400,100);
insert into exercise values('deadlift', 400,100);
insert into exercise values('pullup', 400,100);
insert into exercise values('pushup', 400,100);
insert into exercise values('squat', 400,100);

--STORE
create sequence product_seq start with 1 increment by 1;
create table product(
prodnum number(5) primary key,
category char(1) not null,
name varchar2(100) not null,
price varchar2(30) not null,
contents varchar2(1000) not null,
image varchar2(50) not null
);

create table cart(
cartnum number(8) primary key,
prodnum number(5) not null,
id varchar2(12) not null,
address varchar2(100) not null,
indate date not null,
quantity number(5) not null
);


alter table product modify image varchar2(500);

commit