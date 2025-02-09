CREATE DATABASE addad
USE addad


CREATE TABLE admn
(
	ad_id int identity primary key,
	ad_username nvarchar(50) not null unique,
	ad_password nvarchar(50) not null

)

INSERT INTO admn
VALUES('admin', '12345')

SELECT * FROM admn




CREATE TABLE category
(
	cat_id int identity primary key,
	cat_name nvarchar(50) not null unique,
	cat_img nvarchar(max) not null,
	cat_fk_ad int foreign key references admn(ad_id),
	cat_status int 

)

CREATE TABLE usr
(
	u_id int identity primary key,
	u_name nvarchar(50) not null,
	u_pass nvarchar(50) not null,
	u_mail nvarchar(50) not null unique,
	u_img nvarchar(max) not null,
	u_contact nvarchar(50) not null unique check (len(u_contact) = 11),
	nid_img nvarchar(max) not null,
	nid_no nvarchar(50) not null unique check (len(nid_no) = 10),
	status nvarchar(50) not null default 'Available'

)


CREATE TABLE product
(
	pro_id int identity primary key,
	pro_name nvarchar(50) not null,
	pro_img nvarchar(max) not null,
	pro_descrip nvarchar(max) not null,
	pro_price int not null,
	pro_fk_cat int foreign key references category(cat_id),
	pro_fk_usr int foreign key references usr(u_id)

)




CREATE TABLE tbl_order
(
	o_id int identity primary key,
	o_fk_pro int foreign key references product(pro_id),
	o_fk_user int foreign key references usr(u_id),
	o_fk_invoice int foreign key references tbl_invoice(in_id),
	o_date datetime,
	o_qty int,
	o_bill float,
	o_unitprice int
)	

CREATE TABLE tbl_invoice
(
	in_id int identity primary key,
	in_fk_user int foreign key references usr(u_id),
	in_date datetime,
	in_totalbill float
)


drop table tbl_order
drop table tbl_invoice
drop table category
drop table usr
drop table product



SELECT * FROM category
SELECT * FROM usr 
SELECT * FROM product
SELECT * FROM tbl_invoice
SELECT * FROM tbl_order
SELECT * FROM admn