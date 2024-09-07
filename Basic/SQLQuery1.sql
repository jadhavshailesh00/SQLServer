create database Interview

create table person(P_id int primary key ,name varchar(10))

insert into person values(1,'shailesh')
insert into person values(2,'shailesh')
insert into person values(3,'ram')
insert into person values(4,'rajesh')

Select * from person

delete  from person where P_id=1
truncate table person
drop table person
alter table person add DepartName varchar(10) default 'cse' not null
alter table person add mailid varchar(10) default '@gmail.com' not null

create nonclustered index PName on person(name)
SELECT name AS index_name, type_desc AS index_type
FROM sys.indexes WHERE object_id = OBJECT_ID('person');

update  person set name='rahul' where P_id=2
create unique index mail_pk on person(name)


