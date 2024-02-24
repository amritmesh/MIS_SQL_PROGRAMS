-- select * from BOOKSTORE0NF;
-- select count(*) from BOOKSTORE0NF;
-- select count(*) from (select distinct order_numb, isbn from BOOKSTORE0NF);

/*==========================
FIRST NORMAL FORM (1NF)
===========================*/

-- Primary Key: order_numb, isbn

drop table if exists BOOKSTORE_1NF;
CREATE TABLE BOOKSTORE_1NF (
  customer_numb INTEGER,
  customer_name TEXT,
  customer_street TEXT,
  customer_zip TEXT,
  customer_phone TEXT,
  customer_email TEXT,
  order_numb INTEGER,
  order_date DATE,
  order_filled INTEGER,
  credit_card_numb TEXT,
  credit_card_exp_date DATE,
  isbn VARCHAR(20),
  quantity INTEGER,
  buy_price REAL,
  author_name TEXT,
  title TEXT,
  publisher_name TEXT,
  publication_year INTEGER,
  primary key (order_numb, isbn)
);

insert into BOOKSTORE_1NF
	select * from BOOKSTORE0NF;
	
/*============================
SECOND NORMAL FORM (2NF)
=============================*/

/* What are the parts of the primary key?
1. order_numb
2. isbn
3. order_numb, isbn (NECESSARY) */

drop table if exists ORDERDETAIL_2NF;
-- 1. order_numb
drop table if exists ORDERS_2NF;
CREATE TABLE ORDERS_2NF (
  order_numb INTEGER,
  order_date DATE,
  order_filled INTEGER,
  primary key (order_numb)
);

insert into ORDERS_2NF
	select distinct order_numb, order_date, order_filled
	from BOOKSTORE_1NF;

-- 2. isbn
drop table if exists ISBN_2NF;
CREATE TABLE ISBN_2NF (
  isbn VARCHAR(20),
  author_name TEXT,
  title TEXT,
  publisher_name TEXT,
  publication_year INTEGER,
  primary key (isbn)
);

insert into ISBN_2NF
	select distinct isbn, author_name, title, publisher_name, publication_year
	from BOOKSTORE_1NF;
	
-- 3. order_numb, isbn
CREATE TABLE ORDERDETAIL_2NF (
  customer_numb INTEGER,
  customer_name TEXT,
  customer_street TEXT,
  customer_zip TEXT,
  customer_phone TEXT,
  customer_email TEXT,
  order_numb INTEGER,
  credit_card_numb TEXT,
  credit_card_exp_date DATE,
  isbn VARCHAR(20),
  quantity INTEGER,
  buy_price REAL,
  primary key (order_numb, isbn),
  foreign key (order_numb) references ORDERS_2NF (order_numb),
  foreign key (isbn) references ISBN_2NF (isbn)
);
insert into ORDERDETAIL_2NF
	select distinct customer_numb, customer_name, customer_street, customer_zip, customer_phone, customer_email, order_numb, credit_card_numb, credit_card_exp_date, isbn, quantity, buy_price
	from BOOKSTORE_1NF;
	
/*===========================
THIRD NORMAL FORM (3NF)
============================*/

drop table if exists ORDERDETAIL_3NF;
drop table if exists ORDERS_3NF;
drop table if exists ISBN_3NF;
drop table if exists CUSTOMER_3NF;
drop table if exists CREDIT_CARD_3NF;

-- 1. order_numb
CREATE TABLE ORDERS_3NF (
  order_numb INTEGER,
  order_date DATE,
  order_filled INTEGER,
  primary key (order_numb)
);

insert into ORDERS_3NF
	select distinct order_numb, order_date, order_filled
	from ORDERS_2NF;
	
-- 2. isbn
CREATE TABLE ISBN_3NF (
  isbn VARCHAR(20),
  author_name TEXT,
  title TEXT,
  publisher_name TEXT,
  publication_year INTEGER,
  primary key (isbn)
);

insert into ISBN_3NF
	select distinct isbn, author_name, title, publisher_name, publication_year
	from ISBN_2NF;
	
-- 3.  customer_numb
CREATE TABLE CUSTOMER_3NF (
  customer_numb INTEGER,
  customer_name TEXT,
  customer_street TEXT,
  customer_zip TEXT,
  customer_phone TEXT,
  customer_email TEXT,
  primary key (customer_numb)
);

insert into CUSTOMER_3NF
	select distinct customer_numb,  customer_name, customer_street, customer_zip, customer_phone, customer_email 
	from ORDERDETAIL_2NF;

-- 4. credit_card_numb 
CREATE TABLE CREDIT_CARD_3NF (
  credit_card_numb TEXT,
  credit_card_exp_date DATE,
  primary key (credit_card_numb)
);

insert into CREDIT_CARD_3NF
	select distinct credit_card_numb, credit_card_exp_date
	from ORDERDETAIL_2NF;

-- 5. order_numb, isbn
CREATE TABLE ORDERDETAIL_3NF (
  order_numb INTEGER,
  isbn VARCHAR(20),
  customer_numb INTEGER,
  credit_card_numb TEXT,
  quantity INTEGER,
  buy_price REAL,
  primary key (order_numb, isbn),
  foreign key (order_numb) references ORDERS_3NF (order_numb),
  foreign key (isbn) references ISBN_3NF (isbn),
  foreign key (customer_numb) references CUSTOMER_3NF (customer_numb),
  foreign key (credit_card_numb) references CREDIT_CARD_3NF (credit_card_numb)
);

insert into ORDERDETAIL_3NF
	select distinct order_numb, isbn, customer_numb, credit_card_numb, quantity, buy_price
	from ORDERDETAIL_2NF;