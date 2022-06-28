#!/usr/bin/bash

rds_endpoint=$1

export PGPASSWORD='mod5igpassword'
psql -h $rds_endpoint -U postgres -c \
"create user image_gallery login password 'simple'; \
grant image_gallery to postgres; \
create database image_gallery owner image_gallery"


export PGPASSWORD='simple'
psql -h $rds_endpoint -U image_gallery -c \
"create table users(username varchar(100) not null primary key, password varchar(100), full_name varchar(200)); \
create table images(id serial primary key, username varchar(100), image varchar(400)); \
insert into users values('Administrator', 'adminPW', 'admin')"
