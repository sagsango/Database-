select *
from accounts
inner join orders on (accounts.id=orders.id) 
where (accounts.name='Apple' or accounts.name='Sagar');

select name 
from accounts;

update accounts 
set name='Sagar'
where name='Walmart';

select * 
from accounts
where name='Sagar';

select name
from accounts
order by name;

delete 
from accounts
where name='3M';

update accounts
set name = 'Sagar'
where name='Abbott Laboratories' or
name='AbbVie' or
name='ADP' or
name='Advance Auto Parts';

select name 
from accounts
order by name;

select * 
from accounts
where name='Sagar';

select min(id) 
from accounts
where name='Sagar';

select max(id) 
from accounts
where name='Sagar';

select * 
from accounts
where name='Sagar';

select max(id) as my_max_id_in_database
from accounts
where name='Sagar';

select * 
from accounts
inner join  orders on (accounts.id=orders.id)
where  accounts.name='Sagar';

select name 
from accounts
order by name;

update accounts
set name=NULL
where name='AES';

select *
from accounts
where name=NULL;

select count(name)
from accounts;

select avg(id)*1000000000000000000000000000000
from accounts;

select sum(id)
from accounts;

select count(*)
from accounts
where name = 'Sagar';

select sum(id)
from accounts
where name = 'Sagar';

select name
from accounts
where name like 'S%';

select name
from accounts
where name like 'S%' or name like 'A%';

select name
from accounts
where name like 'S%' or name like '%S';

select name
from accounts
where name like '_s%' or name like '%s_';

select name
from accounts
where name like 'A%a';

select name
from accounts
where name='[ABC]%';

select name
from accounts
where name='[A-Z]%';

select name
from accounts
where name='[!ABC]%';

select name
from accounts
order by name;

select name
from accounts
where name in ('Sagar','Apple');

select *
from accounts
where (id between 0 and 1100) and ( not lat between 0 and 41 );

select *
from accounts
where (id between 0 and 1100) and ( not lat between 0 and 41 )
order by id;

select *
from accounts
where (id between 0 and 1100) and (  lat not between 0 and 41 )
order by id;

select id as token_number
from accounts ;

select id as token_number
from accounts as Khata;

select id as token_number , name as subho_name
from accounts;

select id as token_number , name as cust_name , website as www_Add
from accounts
order by id;

select (website , name) as webname_and_name
from accounts;

select *
from accounts
inner join orders on accounts.id=orders.id
inner join region on accounts.name=region.name;

select *
from accounts
full join orders on accounts.id=orders.id
full join region on accounts.name=region.name;

select *
from accounts
left join orders on accounts.id=orders.id
left join region on accounts.name=region.name;

select *
from accounts
right join orders on accounts.id=orders.id
right join region on accounts.name=region.name;

/********************
* WHAT IS SELF JOIN *
********************/

select * 
from accounts
where name='Sagar'
union
select *
from accounts
where name='Apple';

select * 
from accounts
order by name;


select *
from accounts A,accounts B
where A.id > B.id;

select * 
from accounts
where name='D';

select *
from accounts
where name='Walmart'
union
select *
from accounts
where name='Apple';

select name
from accounts;

update accounts
set name='Sagar' 
where name in ( 'Walmart','Exxon Mobil','Apple','Berkshire Hathaway');

update accounts
set name='Singh' 
where name in ( 'General Electric','AmerisourceBergen','Verizon','Chevron');

select name , count(id) as peoplse
from accounts
where name in ('Sagar','Singh')
group by name ;

select name,count(id),max(id),min(id),avg(id)
from accounts
where name in ('Sagar','Singh','Max')
group by name;

select name
from accounts
order by name;

update accounts
set name='Ali'
where name in ('3M','Abbott Laboratories','AbbVie');

select name,count(id),max(id),min(id),avg(id)
from accounts
where name in ('Sagar','Singh','Ali')
group by name;

select name,count(id) as freq ,max(id)  as max_id,min(id) as min_id,avg(id) as avg_id
from accounts
where name in ('Sagar','Singh','Ali')
group by name
having count(id) > 3;

select name,count(id) as freq ,max(id)  as max_id,min(id) as min_id,avg(id) as avg_id
from accounts
where name in ('Sagar','Singh','Ali')
group by name
having count(id) > 3
order by name;

select name as costumer_name ,count(accounts.id) as freq
from accounts
inner join orders on accounts.id=orders.id
where accounts.id between 1000 and 4000
group by name
having count(accounts.id) > 1 
order by name;

select name
from accounts
where exists 
(
	select  name
	 from accounts 
	 where name='Sagar' and id > 100
);




select *
from accounts
where name='Walmart'
union
select *
from accounts
where name='Apple';

select name
from accounts;

update accounts
set name='Sagar' 
where name in ( 'Walmart','Exxon Mobil','Apple','Berkshire Hathaway');

update accounts
set name='Singh' 
where name in ( 'General Electric','AmerisourceBergen','Verizon','Chevron');

select name , count(id) as peoplse
from accounts
where name in ('Sagar','Singh')
group by name ;

select name,count(id),max(id),min(id),avg(id)
from accounts
where name in ('Sagar','Singh','Max')
group by name;

select name
from accounts
order by name;

update accounts
set name='Ali'
where name in ('3M','Abbott Laboratories','AbbVie');

select name,count(id),max(id),min(id),avg(id)
from accounts
where name in ('Sagar','Singh','Ali')
group by name;

select name,count(id) as freq ,max(id)  as max_id,min(id) as min_id,avg(id) as avg_id
from accounts
where name in ('Sagar','Singh','Ali')
group by name
having count(id) > 3;

select name,count(id) as freq ,max(id)  as max_id,min(id) as min_id,avg(id) as avg_id
from accounts
where name in ('Sagar','Singh','Ali')
group by name
having count(id) > 3
order by name;

select name as costumer_name ,count(accounts.id) as freq
from accounts
inner join orders on accounts.id=orders.id
where accounts.id between 1000 and 4000
group by name
having count(accounts.id) > 1 
order by name;

select name
from accounts
where exists 
(
	select  name
	 from accounts 
	 where name='Sagar' and id > 100
);

/***************************************************************
The ANY and ALL operators are used with a WHERE or HAVING clause.

The ANY operator returns true if any of the subquery values meet 
the condition.

The ALL operator returns true if all of the subquery values meet the condition.
******************************************************************/

select name , id 
from accounts
where id=
	any(select id
     from accounts
     where name='Sagar'
     );
 
select name , id 
from accounts
where id=
	any(select id
     from accounts
     where name in ('Sagar','Singh','Ali')
     )
order by name;

 select name , id 
from accounts
where id=
	any(select id
     from accounts
     where id >= 0
     )
order by name;

/*
********************
** Unable to use  **
********************

The SQL SELECT INTO Statement
The SELECT INTO statement copies data from one table into a new table.

SELECT CustomerName, ContactName INTO CustomersBackup2017
FROM Customers;

SELECT * INTO CustomersBackup2017
FROM Customers;
*/
/* 

**********************
***     Problem    ***
**********************
create table bla(
  id integer,
  name char(20),
  website char(20),
  lat numeric,
  long numeric,
  primary_poc char(30),
  sales_rep_id int
  );
  
  
insert * into newtable
from accounts;

select name,id
from bla;
*/





/*
********************
** Unable to use  **
********************
The SQL INSERT INTO SELECT Statement
The INSERT INTO SELECT statement copies data from one table and inserts it into another table.

INSERT INTO SELECT requires that data types in source and target tables match
The existing records in the target table are unaffected
*/



select * from accounts;

select name ,id,
case
   when id > 1191 then 'Greater'
   when id < 1191 then 'Lesser'
   else 'Equal'
end as id_compare_1200
from accounts
order by id;

select name , id * sales_rep_id  as product
from accounts;




/************************
*****  NULL FUNCTIONS ***
************************/



/**********************************************
*****SQL Stored Procedures for SQL Server******
CREATE PROCEDURE SelectAllCustomers
AS
SELECT * FROM Customers
GO;

Execute the stored procedure above as follows:
Example

EXEC SelectAllCustomers;
*********************************************/
--This query was giving error
create PROCEDURE  print_account_table
as
select *
from accounts
go;


/*****************************
****** Create database  ******
****** Drop database    ******
****** Backup database  *****/

create table table_name(
  var1 int,
  var2 char,
  var3 numeric,
  var4 char(4)
  );
  
  drop table table_name;
  
  alter table table_name
  add new_colum char(50);
  
  alter table table_name
  drop old_colum char(50);
  
  alter table table_name
  modify old_colum char(50);
  
/****************************************
**************  NOT NULL ****************
By default, a column can hold NULL values.
The NOT NULL constraint enforces a column to NOT accept NULL values.
This enforces a field to always contain a value, which means that you 
cannot insert a new record, or update a record without adding a value to this field
*************************************************/
  CREATE TABLE Persons (
    ID int NOT NULL,
    LastName char(255) NOT NULL,
    FirstName char(255) NOT NULL,
    Age int
);


/*****************************
****** Create database  ******
****** Drop database    ******
****** Backup database  *****/

create table table_name(
  var1 int,
  var2 char,
  var3 numeric,
  var4 char(4)
  );
  
  drop table table_name;
  
  alter table table_name
  add new_colum char(50);
  
  alter table table_name
  drop old_colum char(50);
  
  alter table table_name
  modify old_colum char(50);
  
/****************************************
**************  NOT NULL ****************
By default, a column can hold NULL values.

The NOT NULL constraint enforces a column to NOT accept NULL values.

This enforces a field to always contain a value, which means that you cannot insert a new record, or update a record without adding a value to this field
*************************************************/
  CREATE TABLE Persons (
    ID int NOT NULL,
    LastName char(255) NOT NULL,
    FirstName char(255) NOT NULL,
    Age int
);



/******************************************
***************   UNIQUE   ****************
The UNIQUE constraint ensures that all values in a column are different.

Both the UNIQUE and PRIMARY KEY constraints provide a guarantee for uniqueness for a column or set of columns.

A PRIMARY KEY constraint automatically has a UNIQUE constraint.

However, you can have many UNIQUE constraints per table, but only one PRIMARY KEY constraint per table.
*************************************************/

/************************************************
********* SQL PRIMARY KEY Constraint  ***********
https://www.w3schools.com/sql/sql_primarykey.asp
************************************************/



/************************************************
********* SQL FOREIGN KEY Constraint  ***********
https://www.w3schools.com/sql/sql_foreignkey.asp
************************************************/


select * 
from accounts
order by name
limit 100;

select * 
from accounts
order by  id desc ;

select * 
from accounts
order by id , name ,website desc;

select * 
from web_events
join accounts on web_events.account_id=accounts.id;

select * 
from accounts
join web_events on 
accounts.id=web_events.account_id;

select *
from accounts
join orders on accounts.id=orders.account_id
limit 10;

select * 
from sales_reps
join accounts on sales_reps.id=accounts.sales_rep_id
limit 10;

select *
from region
join sales_reps on
region.id=sales_reps.region_id
limit 08;

select *
from accounts
join web_events on
accounts.id=web_events.account_id
join orders on
accounts.id=orders.account_id
join sales_reps on
accounts.sales_rep_id=sales_reps.id
limit 10;

select *
from accounts as t1
join sales_reps as t2
	join region as t3
    on t2.region_id=t3.id --join t2 and t3
on t1.sales_rep_id=t2.id  --join t1 and t2
limit 10;

select * 
from web_events as t1
join accounts as t2
     join orders as t3
     on t2.id=t3.account_id       --join t2 and t3
     join sales_reps as t4
          join region as t5       
          on t4.region_id=t5.id   --join t4 and t5
     on t2.sales_rep_id=t4.id     --join t2 and t4
on t1.account_id=t2.id            --join t1 and t2
limit 10;



   
