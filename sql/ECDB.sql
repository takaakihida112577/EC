set names utf8;
set foreign_key_checks = 0;
drop database if exists ECDB;

create database if not exists ECDB character set utf8 collate utf8_general_ci;
use ECDB;
drop table if exists login_user_transaction;
create table login_user_transaction(
id int not null primary key auto_increment,
login_id varchar(16) unique,
login_pass varchar(16),
user_name varchar(50),
point int,
insert_date datetime,
updated_date datetime
);

create table cart_info_transaction(
id int not null primary key auto_increment,
user_id int,
item_id int,
item_name varchar(30),
item_price int,
item_stock int,
insert_date datetime
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

drop table if exists item_info_transaction;

create table item_info_transaction(
id int not null primary key auto_increment,
item_name varchar(30),
item_price int,
item_stock int,
item_category varchar(30),
insert_date datetime,
update_date datetime
);

create table item_text(
id int not null primary key auto_increment,
item_title varchar(50),
item_explan varchar(100),
item_main varchar(500)
);

create table item_review(
id int not null primary key auto_increment,
item_id varchar(10),
title varchar(255),
review_text varchar(500),
review_date date,
star int,
visit_count int
);

create table item_image(
id int not null primary key auto_increment,
url varchar(255)
);

drop table if exists user_buy_item_transaction;

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

insert into item_image(url) values("./img/item/item01.jpg");
insert into item_image(url) values("./img/item/item02.jpg");
insert into item_image(url) values("./img/item/item03.jpg");
insert into item_image(url) values("./img/item/item04.jpg");
insert into item_image(url) values("./img/item/item05.jpg");
insert into item_image(url) values("./img/item/item06.jpg");
insert into item_image(url) values("./img/item/item07.jpg");
insert into item_image(url) values("./img/item/item08.jpg");
insert into item_image(url) values("./img/item/item09.jpg");
insert into item_image(url) values("./img/item/item10.jpg");
insert into item_image(url) values("./img/item/item01.jpg");
insert into item_image(url) values("./img/item/item02.jpg");
insert into item_image(url) values("./img/item/item03.jpg");
insert into item_image(url) values("./img/item/item04.jpg");
insert into item_image(url) values("./img/item/item05.jpg");
insert into item_image(url) values("./img/item/item06.jpg");
insert into item_image(url) values("./img/item/item07.jpg");
insert into item_image(url) values("./img/item/item08.jpg");
insert into item_image(url) values("./img/item/item09.jpg");
insert into item_image(url) values("./img/item/item10.jpg");
insert into item_image(url) values("./img/item/item01.jpg");
insert into item_image(url) values("./img/item/item02.jpg");
insert into item_image(url) values("./img/item/item03.jpg");
insert into item_image(url) values("./img/item/item04.jpg");
insert into item_image(url) values("./img/item/item05.jpg");
insert into item_image(url) values("./img/item/item06.jpg");
insert into item_image(url) values("./img/item/item07.jpg");
insert into item_image(url) values("./img/item/item08.jpg");
insert into item_image(url) values("./img/item/item09.jpg");
insert into item_image(url) values("./img/item/item10.jpg");
insert into item_image(url) values("./img/item/item01.jpg");
insert into item_image(url) values("./img/item/item02.jpg");
insert into item_image(url) values("./img/item/item03.jpg");
insert into item_image(url) values("./img/item/item04.jpg");
insert into item_image(url) values("./img/item/item05.jpg");
insert into item_image(url) values("./img/item/item06.jpg");
insert into item_image(url) values("./img/item/item07.jpg");
insert into item_image(url) values("./img/item/item08.jpg");
insert into item_image(url) values("./img/item/item09.jpg");
insert into item_image(url) values("./img/item/item10.jpg");

insert into item_text(item_title,item_explan,item_main) values("Made in Japan 1: 商品1","今、注目の商品。クリアな通話品質をサポートする、直観的な使用感のBluetoothヘッドセットです。","商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。");
insert into item_text(item_title,item_explan,item_main) values("Made in Japan 2: 商品2","今、注目の商品","商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。");
insert into item_text(item_title,item_explan,item_main) values("Made in Japan 3: 商品3","今、注目の商品","商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。");
insert into item_text(item_title,item_explan,item_main) values("Made in Japan 4: 商品4","今、注目の商品","商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。");
insert into item_text(item_title,item_explan,item_main) values("Made in Japan 5: 商品5","今、注目の商品","商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。");
insert into item_text(item_title,item_explan,item_main) values("Made in Japan 6: 商品6","今、注目の商品","商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。");
insert into item_text(item_title,item_explan,item_main) values("Made in Japan 7: 商品7","今、注目の商品","商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。");
insert into item_text(item_title,item_explan,item_main) values("Made in Japan 8: 商品8","今、注目の商品","商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。");
insert into item_text(item_title,item_explan,item_main) values("Made in Japan 9: 商品9","今、注目の商品","商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。");
insert into item_text(item_title,item_explan,item_main) values("Made in Japan 10: 商品10","今、注目の商品","商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。");
insert into item_text(item_title,item_explan,item_main) values("Made in Japan 11: 商品11","今、注目の商品","商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。");
insert into item_text(item_title,item_explan,item_main) values("Made in Japan 12: 商品12","今、注目の商品","商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。");
insert into item_text(item_title,item_explan,item_main) values("Made in Japan 13: 商品13","今、注目の商品","商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。");
insert into item_text(item_title,item_explan,item_main) values("Made in Japan 14: 商品14","今、注目の商品","商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。");
insert into item_text(item_title,item_explan,item_main) values("Made in Japan 15: 商品15","今、注目の商品","商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。");
insert into item_text(item_title,item_explan,item_main) values("Made in Japan 16: 商品16","今、注目の商品","商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。");
insert into item_text(item_title,item_explan,item_main) values("Made in Japan 17: 商品17","今、注目の商品","商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。");
insert into item_text(item_title,item_explan,item_main) values("Made in Japan 18: 商品18","今、注目の商品","商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。");
insert into item_text(item_title,item_explan,item_main) values("Made in Japan 19: 商品19","今、注目の商品","商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。");
insert into item_text(item_title,item_explan,item_main) values("Made in Japan 20: 商品20","今、注目の商品","商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。");
insert into item_text(item_title,item_explan,item_main) values("Made in Japan 21: 商品21","今、注目の商品","商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。");
insert into item_text(item_title,item_explan,item_main) values("Made in Japan 22: 商品22","今、注目の商品","商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。");
insert into item_text(item_title,item_explan,item_main) values("Made in Japan 23: 商品23","今、注目の商品","商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。");
insert into item_text(item_title,item_explan,item_main) values("Made in Japan 24: 商品24","今、注目の商品","商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。");
insert into item_text(item_title,item_explan,item_main) values("Made in Japan 25: 商品25","今、注目の商品","商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。");
insert into item_text(item_title,item_explan,item_main) values("Made in Japan 26: 商品26","今、注目の商品","商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。");
insert into item_text(item_title,item_explan,item_main) values("Made in Japan 27: 商品27","今、注目の商品","商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。");
insert into item_text(item_title,item_explan,item_main) values("Made in Japan 28: 商品28","今、注目の商品","商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。");
insert into item_text(item_title,item_explan,item_main) values("Made in Japan 29: 商品29","今、注目の商品","商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。");
insert into item_text(item_title,item_explan,item_main) values("Made in Japan 30: 商品30","今、注目の商品","商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。");
insert into item_text(item_title,item_explan,item_main) values("Made in Japan 31: 商品31","今、注目の商品","商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。");
insert into item_text(item_title,item_explan,item_main) values("Made in Japan 32: 商品32","今、注目の商品","商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。");
insert into item_text(item_title,item_explan,item_main) values("Made in Japan 33: 商品33","今、注目の商品","商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。");
insert into item_text(item_title,item_explan,item_main) values("Made in Japan 34: 商品34","今、注目の商品","商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。");
insert into item_text(item_title,item_explan,item_main) values("Made in Japan 35: 商品35","今、注目の商品","商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。");
insert into item_text(item_title,item_explan,item_main) values("Made in Japan 36: 商品36","今、注目の商品","商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。");
insert into item_text(item_title,item_explan,item_main) values("Made in Japan 37: 商品37","今、注目の商品","商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。");
insert into item_text(item_title,item_explan,item_main) values("Made in Japan 38: 商品38","今、注目の商品","商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。");
insert into item_text(item_title,item_explan,item_main) values("Made in Japan 39: 商品39","今、注目の商品","商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。");
insert into item_text(item_title,item_explan,item_main) values("Made in Japan 40: 商品40","今、注目の商品","商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。商品の説明です。");


insert into item_info_transaction(item_name,item_price,item_stock,item_category) values("商品1",100,50,"A");
insert into item_info_transaction(item_name,item_price,item_stock,item_category) values("商品2",100,50,"B");
insert into item_info_transaction(item_name,item_price,item_stock,item_category) values("商品3",100,50,"B");
insert into item_info_transaction(item_name,item_price,item_stock,item_category) values("商品4",100,50,"C");
insert into item_info_transaction(item_name,item_price,item_stock,item_category) values("商品5",100,50,"C");
insert into item_info_transaction(item_name,item_price,item_stock,item_category) values("商品6",100,50,"C");
insert into item_info_transaction(item_name,item_price,item_stock,item_category) values("商品7",100,50,"E");
insert into item_info_transaction(item_name,item_price,item_stock,item_category) values("商品8",100,50,"E");
insert into item_info_transaction(item_name,item_price,item_stock,item_category) values("商品9",100,50,"E");
insert into item_info_transaction(item_name,item_price,item_stock,item_category) values("商品10",100,50,"E");
insert into item_info_transaction(item_name,item_price,item_stock,item_category) values("商品11",100,50,"F");
insert into item_info_transaction(item_name,item_price,item_stock,item_category) values("商品12",100,50,"F");
insert into item_info_transaction(item_name,item_price,item_stock,item_category) values("商品13",100,50,"F");
insert into item_info_transaction(item_name,item_price,item_stock,item_category) values("商品14",100,50,"F");
insert into item_info_transaction(item_name,item_price,item_stock,item_category) values("商品15",100,50,"F");
insert into item_info_transaction(item_name,item_price,item_stock,item_category) values("商品16",100,50,"G");
insert into item_info_transaction(item_name,item_price,item_stock,item_category) values("商品17",100,50,"G");
insert into item_info_transaction(item_name,item_price,item_stock,item_category) values("商品18",100,50,"G");
insert into item_info_transaction(item_name,item_price,item_stock,item_category) values("商品19",100,50,"G");
insert into item_info_transaction(item_name,item_price,item_stock,item_category) values("商品20",100,50,"G");
insert into item_info_transaction(item_name,item_price,item_stock,item_category) values("商品21",100,50,"G");
insert into item_info_transaction(item_name,item_price,item_stock,item_category) values("商品22",100,50,"H");
insert into item_info_transaction(item_name,item_price,item_stock,item_category) values("商品23",100,50,"H");
insert into item_info_transaction(item_name,item_price,item_stock,item_category) values("商品24",100,50,"H");
insert into item_info_transaction(item_name,item_price,item_stock,item_category) values("商品25",100,50,"H");
insert into item_info_transaction(item_name,item_price,item_stock,item_category) values("商品26",100,50,"H");
insert into item_info_transaction(item_name,item_price,item_stock,item_category) values("商品27",100,50,"H");
insert into item_info_transaction(item_name,item_price,item_stock,item_category) values("商品28",100,50,"H");
insert into item_info_transaction(item_name,item_price,item_stock,item_category) values("商品29",100,50,"A");
insert into item_info_transaction(item_name,item_price,item_stock,item_category) values("商品30",100,50,"B");
insert into item_info_transaction(item_name,item_price,item_stock,item_category) values("商品31",100,50,"C");
insert into item_info_transaction(item_name,item_price,item_stock,item_category) values("商品32",100,50,"D");
insert into item_info_transaction(item_name,item_price,item_stock,item_category) values("商品33",100,50,"E");
insert into item_info_transaction(item_name,item_price,item_stock,item_category) values("商品34",100,50,"F");
insert into item_info_transaction(item_name,item_price,item_stock,item_category) values("商品35",100,50,"G");
insert into item_info_transaction(item_name,item_price,item_stock,item_category) values("商品36",100,50,"G");
insert into item_info_transaction(item_name,item_price,item_stock,item_category) values("商品37",100,50,"A");
insert into item_info_transaction(item_name,item_price,item_stock,item_category) values("商品38",100,50,"B");
insert into item_info_transaction(item_name,item_price,item_stock,item_category) values("商品39",100,50,"C");
insert into item_info_transaction(item_name,item_price,item_stock,item_category) values("商品40",100,50,"D");