create table users(username varchar(100) not null primary key, password varchar(100), full_name varchar(200));
create table images(id serial primary key, username varchar(100), image varchar(400));
insert into users values('Administrator', 'adminPW', 'admin');
