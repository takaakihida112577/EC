use ECDB;
drop table if exists user_buy_item_transaction;
drop table if exists login_user_transaction;
drop table if exists user_transaction;
create table user_buy_item_transaction(
id int not null primary key auto_increment,
item_transaction_id int,
total_price int,
total_count int,
user_master_id varchar(16),
pay varchar(30),
insert_date datetime,
delete_date datetime
);

create table login_user_transaction(
id int not null primary key auto_increment,
login_id varchar(16) unique,
login_pass varchar(16),
user_name varchar(50),
point int,
insert_date datetime,
updated_date datetime
);

create table user_transaction(
id int not null primary key auto_increment,
user_name varchar(40),
user_name_kana varchar(40),
user_id varchar(40) unique,
password varchar(40),
phone varchar(40),
email varchar(40),
postal varchar(40),
address_ken varchar(40),
address varchar(40),
point int,
insert_date datetime,
updated_date datetime
);