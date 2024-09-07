create table person(P_id int primary key ,name varchar(10))

insert into person values(1,'shailesh')
insert into person values(2,'shailesh')
insert into person values(3,'ram')
insert into person values(4,'rajesh')

Select * from person

begin Transaction 
	begin try
		update person  set fistname1='shaileshjadhav' where P_id =1;
	end try
	begin catch
		rollback transaction;
		print 'tranaction roll back';
	end catch;



