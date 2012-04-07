drop table user;
create table user
( 
id int primary key, 
name varchar(20) not null, 
password varchar(20) not null, 
e_mail varchar(30), 
role varchar(20),
report_to varchar(20),
regate date
)DEFAULT CHARSET=utf8; 

insert into user values('1','admin','admin','','','','2012-04-01');

create table tbl_role(
id int primary key, 
roleName varchar(20)
)

insert into tbl_role values('1','系统管理员');
insert into tbl_role values('2','普通管理员');
insert into tbl_role values('3','操作员');