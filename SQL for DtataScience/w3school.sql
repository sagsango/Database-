/******************************
********* New Keyword *********
1.abs(x)
2.round(x,y)
3.dual ??

4.to_date(my_date,'DD/MM/YYYY')
5.to_char()
6.to_number()

*******************************
******************************/

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


/********************************************
*** Forigen key may appear more than once ***
*** Primary Key will appear only once     ***
********************************************/

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

--Type of nested
SELECT *
FROM web_events
JOIN accounts
ON web_events.account_id = accounts.id
JOIN orders
ON accounts.id = orders.account_id


SELECT r.name region, s.name rep, a.name account
FROM sales_reps s
JOIN region r
ON s.region_id = r.id
JOIN accounts a
ON a.sales_rep_id = s.id
WHERE r.name = 'Midwest'
ORDER BY a.name;

SELECT r.name region, s.name rep, a.name account
FROM sales_reps s
JOIN region r
ON s.region_id = r.id
JOIN accounts a
ON a.sales_rep_id = s.id
WHERE r.name = 'Midwest' AND s.name LIKE 'S%'
ORDER BY a.name;

SELECT r.name region, s.name rep, a.name account
FROM sales_reps s
JOIN region r
ON s.region_id = r.id
JOIN accounts a
ON a.sales_rep_id = s.id
WHERE r.name = 'Midwest' AND s.name LIKE '% K%'
ORDER BY a.name;

SELECT r.name region, a.name account, o.total_amt_usd/(o.total + 0.01) unit_price
FROM region r
JOIN sales_reps s
ON s.region_id = r.id
JOIN accounts a
ON a.sales_rep_id = s.id
JOIN orders o
ON o.account_id = a.id
WHERE o.standard_qty > 100;


SELECT r.name region, a.name account, o.total_amt_usd/(o.total + 0.01) unit_price
FROM region r
JOIN sales_reps s
ON s.region_id = r.id
JOIN accounts a
ON a.sales_rep_id = s.id
JOIN orders o
ON o.account_id = a.id
WHERE o.standard_qty > 100 AND o.poster_qty > 50
ORDER BY unit_price;


SELECT r.name region, a.name account, o.total_amt_usd/(o.total + 0.01) unit_price
FROM region r
JOIN sales_reps s
ON s.region_id = r.id
JOIN accounts a
ON a.sales_rep_id = s.id
JOIN orders o
ON o.account_id = a.id
WHERE o.standard_qty > 100 AND o.poster_qty > 50
ORDER BY unit_price DESC;


SELECT DISTINCT a.name, w.channel
FROM accounts a
JOIN web_events w
ON a.id = w.account_id
WHERE a.id = '1001';

SELECT o.occurred_at, a.name, o.total, o.total_amt_usd
FROM accounts a
JOIN orders o
ON o.account_id = a.id
WHERE o.occurred_at BETWEEN '01-01-2015' AND '01-01-2016'
ORDER BY o.occurred_at DESC;

update accounts
set primary_poc = NULL
where name='Walmart';

select *
from accounts
where primary_poc is not  NULL;

select count(id) as NULL_primary_poc
from accounts
where primary_poc is NULL;

select count(id) as id_count , sum(id) as id_sum, avg(id) as id_avg,max(id) as id_max,min(id) as id_min
from accounts;


--purchases grouped by costumers 
select t2.id as account_id,t2.name as account_name,t2.website as account_web, count ( t1.occurred_at) as no_of_purchase
from orders as t1
join accounts as t2 
on t1.account_id=t2.id
group by t2.id , t2.name ,t2.website
order by  t2.id;

--purchases grouped by region id and name
select t1.id as region_id,t1.name as region_name,count(t1.id) as total_number_of_purchases
from region as t1
join sales_reps as t2
on t1.id=t2.region_id
join accounts as t3
on t2.id=t3.sales_rep_id
join orders as t4
on t3.id=t4.account_id
group by t1.id,t1.name;

--no of costumers grouped by region
select t1.id as region_id,t1.name as region_name,count(t1.id) as no_of_costumers
from region as t1
join sales_reps as t2
on t1.id=t2.region_id
join accounts as t3
on t2.id=t3.sales_rep_id
group by t1.id,t1.name
order by t1.id,t1.name;

--no of web_events grouped by costumers
select t1.id as costumer_id,t1.name as costumer_name,count(t1.id) as no_of_web_events
from accounts as t1
join web_events as t2
on t1.id=t2.account_id
group by t1.id,t1.name
order by t1.id,t1.name;

--no of orders and no of web_events grouped by account id and account name ??


select sum(poster_qty) as poster_qty_sum
from orders;

select sum(total_amt_usd) as total_amt_usd_sum
from orders;

select sum(standard_amt_usd) as standard_amt_usd_sum ,
       sum(gloss_amt_usd) as gloss_amt_sum
       from orders;

 select sum(standard_amt_usd)/sum(standard_qty) as amt_per_qty
 from orders;


/**********************
*****    MEDIAN  ******
**********************/
SELECT *
FROM (SELECT total_amt_usd
      FROM orders
      ORDER BY total_amt_usd
      LIMIT 3457) AS Table1
ORDER BY total_amt_usd DESC
LIMIT 2;


/*************************************************************
****              POWERFUL GROUP BY                       ****
**** The GROUP BY always goes between WHERE and ORDER BY. ****
*************************************************************/
select account_id,
 		sum(standard_qty) as standard_qty_sum,
        sum(gloss_qty) as gloss_qty_sum,
        sum(poster_qty) as poster_qty_sum,
        sum(total_amt_usd) as total_amt_usd_sum
from orders
group by account_id;

select account_id,
 		sum(standard_qty) as standard_qty_sum,
        sum(gloss_qty) as gloss_qty_sum,
        sum(poster_qty) as poster_qty_sum,
        sum(total_amt_usd) as total_amt_usd_sum
from orders
group by account_id
order by account_id;

select a.name as account_name,
       o.occurred_at as first_purchase
from orders as o
join accounts as a
on a.id=o.account_id
order by o.occurred_at
limit 1;

select a.name as company_name,
 		sum(o.total_amt_usd) as total_sales
 from accounts as a
 join orders as o
 on a.id=o.account_id
 group by a.name;

select w.occurred_at as latest_web_event_date,
	w.channel as channel_used,
	a.name as assosiated_account
from web_events as w
join accounts as a
on w.account_id=a.id
order by w.occurred_at desc
limit 1;

select w.channel as channel_name,
	count(w.id) as no_of_times_used
from web_events as w
group by w.channel;

select w.channel as channel_name,
	count(*) as no_of_times_used
from web_events as w
group by w.channel;

select a.primary_poc as primary_contact_of_earlist_event
from web_events as w
join accounts as a
on w.account_id=a.id
order by w.occurred_at
limit 1;

--After modification/constr of the table use new/own names
select a.name as account_name,
	min(o.total_amt_usd) as min_total_usd
from accounts as a
join orders as o
on a.id=o.account_id
group by a.name
order by min_total_usd;

--After modification/constr of the table use new/own names
select r.name as region_name,
	count(*) as no_of_sales_reps
 from region as r
 join sales_reps as s
 on r.id=s.region_id
 group by region_name
 order by no_of_sales_reps;
 
 select a.name as account_name,
	avg(o.standard_qty) as avg_satndard_qty,
    avg(o.poster_qty) as poster_qty_used,
    avg(o.gloss_qty) as glossy_qty_used
from accounts as a
join orders as o
on a.id=o.account_id
group by account_name;

select a.name as account_name,
	avg(o.standard_amt_usd) as avg_satndard_amt,
    avg(o.poster_amt_usd) as poster_qty_amt,
    avg(o.gloss_amt_usd) as glossy_qty_amt
from accounts as a
join orders as o
on a.id=o.account_id
group by account_name;
  
select s.name as sales_reps_name,
	w.channel as channel_name,
    count(*) as no_of_occourance
from sales_reps as s
join accounts as a
on s.id=a.sales_rep_id
join web_events as w
on w.account_id=a.id
group by sales_reps_name,channel_name
order by no_of_occourance desc;

--final joined table independent of the order of table join operations
 select r.name as region_name,
 	w.channel as channel_name,
    count(*) as no_of_times_channel_used
 from region as r
 join sales_reps as s
 on r.id=s.region_id
 join accounts as a
 on a.sales_rep_id=s.id
 join web_events as w
 on w.account_id=a.id
 group by region_name,channel_name
 order by no_of_times_channel_used desc;
 
 select a.id as account_id,
	a.name as account_name,
    r.id as region_id,
    r.name as region_name
from accounts as a
join sales_reps as s
on a.sales_rep_id=s.id
join region as r
on r.id=s.region_id;

select distinct a.id as account_id,
	a.name as account_name,
    r.id as region_id,
    r.name as region_name
from accounts as a
join sales_reps as s
on a.sales_rep_id=s.id
join region as r
on r.id=s.region_id;

select s.id as sales_rep_id,
	s.name as sales_rep_id,
    a.id as worked_on_account_id,
	a.name as worked_on_account_name
from accounts as a
join sales_reps as s
on a.sales_rep_id=s.id;

select distinct s.id as sales_rep_id,
	s.name as sales_rep_name,
    a.id as worked_on_account_id,
	a.name as worked_on_account_name
from accounts as a
join sales_reps as s
on a.sales_rep_id=s.id;
    
select o.account_id as account_id,
	sum(o.total_amt_usd) as total_amt
from orders as o
group by account_id;


select o.account_id as account_id,
	sum(o.total_amt_usd) as total_amt
from orders as o 
--where sum(o.total_amt_usd) > 2000 
--aggregate functions are not allowed in WHERE
group by account_id
having sum(o.total_amt_usd) > 2000

/**************************
*******    Having   *******
**************************/
--WHERE subsets the returned data based on a logical condition.

--WHERE appears after the FROM, JOIN, and ON clauses, but before GROUP BY.

--HAVING appears after the GROUP BY clause, but before the ORDER BY clause.

--HAVING is like WHERE, but it works on logical statements involving aggregations.


select s.id as sales_reps_id,
	s.name as sales_reps_name,
    count(*) as no_of_accounts_manages
from accounts as a
join sales_reps as s
on a.sales_rep_id=s.id
group by sales_reps_id , sales_reps_name
-- having no_of_accounts_manages > 5 
-- no_of_accounts_manages is applicable for whole col[attibute] op
-- count(*) is for indivisual row [ data ]
having count(*) > 5
order by count(*) ;


select a.id as account_id,
	a.name as account_name,
    count(*) as no_of_orders
from accounts as a
join orders as o
on o.account_id=a.id
--group by account_id, account_name
--Does not works [ should be indivisual not whole table]
group by a.id ,a.name 
having count(*) > 20
order by count(*);

select a.id as account_id,
	a.name as account_name,
    count(*) as no_of_orders
from accounts as a
join orders as o
on o.account_id=a.id
--group by account_id, account_name
--Does not works [ should be indivisual not whole table]
group by a.id ,a.name 
--order by no_of_orders
--works here
order by count(*) desc
limit 1;


select a.id as account_id,
	a.name as account_name,
    sum(o.total_amt_usd) as total_amt_spend
from accounts as a
join orders as o
on o.account_id=a.id
group by a.id ,a.name
having sum(o.total_amt_usd) > 30000
order by total_amt_spend;


select a.id as account_id,
	a.name as account_name,
    sum(o.total_amt_usd) as total_amt_spend
from accounts as a
join orders as o
on o.account_id=a.id
group by a.id ,a.name
having sum(o.total_amt_usd) < 1000
order by total_amt_spend;


select a.id as account_id,
	a.name as account_name,
    sum(o.total_amt_usd) as total_amt_spend
from accounts as a
join orders as o
on o.account_id=a.id
group by a.id ,a.name
order by total_amt_spend desc
limit 1;

SELECT a.id, a.name, SUM(o.total_amt_usd) total_spent
FROM accounts a
JOIN orders o
ON a.id = o.account_id
GROUP BY a.id, a.name
ORDER BY total_spent 
LIMIT 1;


select a.id as account_id,
	a.name as account_name,
    count(*) as no_of_times_used_facebook
from accounts as a
join web_events as w
on w.account_id=a.id
where w.channel='facebook'
group by a.id,a.name
having count(*) > 6 
order by no_of_times_used_facebook;
------------ another solution ------------
select a.id as account_id,
	a.name as account_name,
    count(*) as no_of_times_used_facebook
from accounts as a
join web_events as w
on w.account_id=a.id
--all the col used before aggrigation should appear in group by
group by a.id,a.name,w.channel
having count(*) > 6 and w.channel='facebook'
order by no_of_times_used_facebook;

select w.channel as channel_name,
	count(*) as no_of_times_used
from accounts as a
join web_events as w
on w.account_id=a.id
group by w.channel
order by no_of_times_used desc
limit 1;

select a.name as account_name,
	w.channel as channel_name,
	count(*) as no_of_times_used
from accounts as a
join web_events as w
on w.account_id=a.id
group by a.name , w.channel
order by no_of_times_used desc;

/**********************************************
******************   Date  ********************
**********************************************/
select date_part('month',o.occurred_at) as month,
       count(*) no_of_purchases
from orders as o
group by date_part('month',o.occurred_at)
order by  month;

select date_part('month',o.occurred_at) as month,
       count(*) no_of_purchases
from orders as o
group by date_part('month',o.occurred_at)
order by  no_of_purchases desc;


select date_part('day',o.occurred_at) as day,
       count(*) no_of_purchases
from orders as o
group by date_part('day',o.occurred_at)
order by  day;


select date_part('year',o.occurred_at) as year_no,
       count(*) no_of_purchases
from orders as o
group by date_part('year',o.occurred_at)
order by  year_no;

select date_part('second',o.occurred_at) as second,
       count(*) no_of_purchases
from orders as o
group by date_part('second',o.occurred_at)
order by  second;

select date_part('dow',o.occurred_at) as day_of_week,
       count(*) no_of_purchases
from orders as o
group by date_part('dow',o.occurred_at)
order by  day_of_week;

/****************************
***        Case           ***
****************************/
select date_part('year',o.occurred_at) as year_,
	sum(o.total_amt_usd) as total_sales,
    case 
    	when sum(o.total_amt_usd) > 5752004.94 then 'Greater than 5752004.94'
        when sum(o.total_amt_usd) < 5752004.94 then 'Lesser than 5752004.94'
        else 'Equal to 5752004.94'
     end as amount_status
from orders as o
group by date_part('year',o.occurred_at)
order by total_sales desc;

select date_part('year',o.occurred_at) as year_,
	sum(o.total_amt_usd) as total_sales,
    case 
    	when sum(o.total_amt_usd) > 5752004.94 then 'Greater than 5752004.94'
        when sum(o.total_amt_usd) < 5752004.94 then 'Lesser than 5752004.94'
        else 'Equal to 5752004.94'
     end as amount_status
from orders as o
group by date_part('year',o.occurred_at)
order by total_sales desc;


select case 
    	when o.total_amt_usd > 1000 then 'Greater than 1000'
        when o.total_amt_usd < 100 then 'Lesser than 1000'
        else 'Equal to 1000'
     end as amount_status,
     count(*) as no_of_orders
from orders as o
group by 1;

select case 
    	when o.total_amt_usd > 1000 then 'Greater than 1000'
        when o.total_amt_usd < 100 then 'Lesser than 1000'
        else 'Equal to 1000'
     end as amount_status,
     count(*) as no_of_orders
from orders as o
group by amount_status;




select date_part('year',o.occurred_at) as year_,
	sum(o.total_amt_usd) as total_sales,
    case 
    	when sum(o.total_amt_usd) > 5752004.94 then 'Greater than 5752004.94'
        when sum(o.total_amt_usd) < 5752004.94 then 'Lesser than 5752004.94'
        else 'Equal to 5752004.94'
     end as amount_status
from orders as o
group by date_part('year',o.occurred_at)
order by total_sales desc;


select case 
    	when o.total_amt_usd > 1000 then 'Greater than 1000'
        when o.total_amt_usd < 100 then 'Lesser than 1000'
        else 'Equal to 1000'
     end as amount_status,
     count(*) as no_of_orders
from orders as o
group by 1;

select case 
    	when o.total_amt_usd > 1000 then 'Greater than 1000'
        when o.total_amt_usd < 100 then 'Lesser than 1000'
        else 'Equal to 1000'
     end as amount_status,
     count(*) as no_of_orders
from orders as o
group by amount_status;

select account_id as account_id,
	total_amt_usd as total_amount,
    case
    	when total_amt_usd < 3000 then 'Samller than 3000'
        else 'Greater or Equal to 3000'
    end as status
from orders;


select case
		when total >= 2000 then 'At least 2000'
        when total < 1000 then 'Less than 1000'
        else 'Between 1000 and 2000'
       end as status,
       count(*) no_of_orders
from orders
group by status;

select a.id as account_id,
	a.name as account_name,
    sum(o.total_amt_usd) as total_sum,
    case
    	when sum(o.total_amt_usd) > 200000 then 'Greater than 200000'
        when sum(o.total_amt_usd) < 100000 then 'Less than 100000'
        else 'Between 100000 and 200000'
    end as level
 from accounts as a
-- where date_part('year',o.occurred_at) in ('2017','2013')
-- above not work
 join orders as o
 on o.account_id=a.id
 where date_part('year',o.occurred_at) in ('2017','2016')
 group by a.id,a.name
 order by total_sum desc;
 
 --from
 --join
 --where
 --group by
 --having
 --ordered by
 --limit
 
 select s.id as sales_rep_id,
 	s.name as sales_rep_name,
    count(*) as number_of_orders,
    case 
    	when count(*) > 200 then 'Top'
        else 'not'
    end as top_preformer
from sales_reps as s
join accounts as a
on s.id=a.sales_rep_id
join orders as o
on o.account_id=a.id
group by s.id,s.name
order by number_of_orders desc;


select s.id as sales_rep_id,
 	s.name as sales_rep_name,
    count(*) as number_of_orders,
    case 
    	when count(*) > 750000 or count(*) > 200 then 'Top'
        when count(*) > 500000 or count(*) > 150 then 'Middle'
        else 'Low'
    end as top_preformer
from sales_reps as s
join accounts as a
on s.id=a.sales_rep_id
join orders as o
on o.account_id=a.id
group by s.id,s.name
order by number_of_orders desc,sales_rep_name;



/***********************
****    subquery    ****
***********************/
--query
select w.id as channel_id,
     date_part('day',w.occurred_at) as day,
     count(*) event_count
from web_events as w
group by w.id,date_part('day',w.occurred_at);
--subquery
select channel_id as channel_id,
	sum(event_count) as avg_per_channel
from
 	(
     select w.id as channel_id,
       date_trunc('day',w.occurred_at) as day,
     count(*) event_count
     from web_events as w
     group by w.id,date_trunc('day',w.occurred_at)
     ) sub
group by channel_id
order by avg_per_channel desc;

select w.channel as channel_name,
	date_trunc('day', w.occurred_at) as day,
    count(*) as freq
from web_events as w
group by w.channel,date_trunc('day',w.occurred_at) 
order by freq desc;

select *
from (
select w.channel as channel_name,
	date_trunc('day', w.occurred_at) as day,
    count(*) as freq
from web_events as w
group by w.channel,date_trunc('day',w.occurred_at) 
order by freq desc ) sub;


select *
from (
select w.channel as channel_name,
	date_trunc('day', w.occurred_at) as day,
    count(*) as freq
from web_events as w
group by w.channel,date_trunc('day',w.occurred_at) 
order by freq desc ) sub
where ( day = '01-01-2017' and channel_name = 'direct' )
	or( day = '12-31-2016' and channel_name = 'facebook' )
    or( day = '11-03-2016' and channel_name = 'direct' )
    or( day = '12-21-2016' and channel_name = 'direct' );
    

select channel_name,
 		avg(freq) as avg_avants_per_day
from (
select w.channel as channel_name,
	date_trunc('day', w.occurred_at) as day,
    count(*) as freq
from web_events as w
group by w.channel,date_trunc('day',w.occurred_at) 
order by freq desc ) sub
group by channel_name;

--well formed subquery  
SELECT *
FROM (SELECT DATE_TRUNC('day',occurred_at) AS day,
                channel, COUNT(*) as events
      FROM web_events 
      GROUP BY 1,2
      ORDER BY 3 DESC) sub
GROUP BY day, channel, events
ORDER BY 2 DESC;

--all orders during first moth of the company
--first month  as sub
select min( date_trunc('month',occurred_at) )
from orders;
--full query
select *
from orders
where date_trunc('month',occurred_at) =
	(  
       select min( date_trunc('month',occurred_at) )
       from orders
     );
     
--big query
select avg(standard_qty) as avg_standard_qty,
	avg(gloss_qty) as avg_gloss_qty,
	avg(poster_qty) as avg_poster_qty
from
	( 
        select *
		from orders
		where date_trunc('month',occurred_at) =
		(  
 		      select min( date_trunc('month',occurred_at) )
 		      from orders
   	    )
   ) sub;
 ------- or -------
SELECT AVG(standard_qty) avg_std, AVG(gloss_qty) avg_gls, AVG(poster_qty) avg_pst
FROM orders
WHERE DATE_TRUNC('month', occurred_at) = 
     (SELECT DATE_TRUNC('month', MIN(occurred_at)) FROM orders);


select sum(total_amt_usd) as total_amt_in_first_month
from orders
where date_trunc('month',occurred_at)=
		( select  date_trunc('month',min(occurred_at))
         from orders);
 


--most frequest channel used by every company
--base1
select a.id as company_id,
	a.name as campany_name,
    w.channel as channel_used,
    count(*) as no_of_times
from accounts as a
join web_events as w
on a.id=w.account_id
group by a.id,a.name,w.channel
order by company_id,channel_used;
--base2
select t1.company_id as company_id,
	t1.company_name as company_name,
    max(t1.no_of_times) as max_freq
from 
	(
 	            select a.id as company_id,
 		      	a.name as company_name,
   		        w.channel as channel_used,
  			    count(*) as no_of_times
				from accounts as a
				join web_events as w
				on a.id=w.account_id
				group by a.id,a.name,w.channel
				order by company_id,channel_used
      ) t1
group by t1.company_id,t1.company_name
order by company_id;
--final
select * 
from 
	(
      		select a.id as company_id,
			a.name as campany_name,
  		    w.channel as channel_used,
   			 count(*) as no_of_times
			from accounts as a
			join web_events as w
			on a.id=w.account_id
			group by a.id,a.name,w.channel
			order by company_id,channel_used
      ) ftab1
join 
	(
	      	select t1.company_id as company_id,
			t1.company_name as company_name,
		    max(t1.no_of_times) as max_freq
			from 
			(
 	            select a.id as company_id,
 		      	a.name as company_name,
   		        w.channel as channel_used,
  			    count(*) as no_of_times
				from accounts as a
				join web_events as w
				on a.id=w.account_id
				group by a.id,a.name,w.channel
				order by company_id,channel_used
    		  ) t1
			  group by t1.company_id,t1.company_name
			  order by company_id
      ) ftab2
on ftab1.company_id=ftab2.company_id
	and ftab1.no_of_times=ftab2.max_freq
order by ftab1.company_id;
      

--:q1-----------------------------------------
select r.id as region_id,
    s.name as sales_rep_name,
 	sum(o.total_amt_usd) as total_usd_sum
from region as r
join sales_reps as s
on r.id=s.region_id
join accounts as a
on a.sales_rep_id=s.id
join orders as o
on o.account_id=a.id
group by r.id,s.name;


select tab1.region_id as region_id,
    max(tab1.total_usd_sum) as max_total_usd_sum
from sales_reps as s
join (
select r.id as region_id,
    s.name as sales_rep_name,
 	sum(o.total_amt_usd) as total_usd_sum
from region as r
join sales_reps as s
on r.id=s.region_id
join accounts as a
on a.sales_rep_id=s.id
join orders as o
on o.account_id=a.id
group by r.id,s.name  ) as tab1
on tab1.region_id=s.region_id
group by tab1.region_id;


select tf1.region_id as region_id,
	tf2.sales_rep_name as sales_rep_name,
    tf1.max_total_usd_sum
from (
select tab1.region_id as region_id,
    max(tab1.total_usd_sum) as max_total_usd_sum
from sales_reps as s
join (
select r.id as region_id,
    s.name as sales_rep_name,
 	sum(o.total_amt_usd) as total_usd_sum
from region as r
join sales_reps as s
on r.id=s.region_id
join accounts as a
on a.sales_rep_id=s.id
join orders as o
on o.account_id=a.id
group by r.id,s.name  ) as tab1
on tab1.region_id=s.region_id
group by tab1.region_id ) as tf1
join (
select r.id as region_id,
    s.name as sales_rep_name,
 	sum(o.total_amt_usd) as total_usd_sum
from region as r
join sales_reps as s
on r.id=s.region_id
join accounts as a
on a.sales_rep_id=s.id
join orders as o
on o.account_id=a.id
group by r.id,s.name ) as tf2
on tf1.region_id=tf2.region_id
where tf1.max_total_usd_sum = tf2.total_usd_sum
order by tf1.max_total_usd_sum desc;

--:q2-----------------------------------------
select r.id as region_id,
	r.name as region_name,
    sum(o.total_amt_usd) as sum
from region as r
join sales_reps as s
on s.region_id=r.id
join accounts as a
on a.sales_rep_id=s.id
join orders as o
on o.account_id=a.id
group by r.id , r.name 
order by sum desc;


select count(*)
from (
select r.id as region_id,
	r.name as region_name
from region as r
join sales_reps as s
on s.region_id=r.id
join accounts as a
on a.sales_rep_id=s.id
join orders as o
on o.account_id=a.id ) as t1
where t1.region_id in (
  select mid.region_id
  from (
  select r.id as region_id,
	r.name as region_name,
    sum(o.total_amt_usd) as sum
from region as r
join sales_reps as s
on s.region_id=r.id
join accounts as a
on a.sales_rep_id=s.id
join orders as o
on o.account_id=a.id
group by r.id , r.name 
order by sum desc ) as mid
  limit 1);

--or
select r.id as region_id,
	sum(o.total_amt_usd) as regional_total_usd
from region as r
join sales_reps as s
on s.region_id=r.id
join accounts as a
on a.sales_rep_id=s.id
join orders as o
on o.account_id=a.id
group by r.id;

--also workes when multiple regions have max ( total_usd_sum )
--gives count region wise with total_usd_sum having max ( total_usd_sum )
select r.id as region_id
from region as r
join sales_reps as s
on s.region_id=r.id
join accounts as a
on a.sales_rep_id=s.id
join orders as o
on o.account_id=a.id;

select  t1.region_id as region_id,
		t1.regional_total_usd as regional_total_usd,
		count(*) as total_sales
from (
 	 --tested : region_id , regional_total_usd
	select r.id as region_id,
	sum(o.total_amt_usd) as regional_total_usd
	from region as r
	join sales_reps as s
	on s.region_id=r.id
  	join accounts as a
	on a.sales_rep_id=s.id
	join orders as o
	on o.account_id=a.id
	group by r.id 
) as t1
join (
 	 --tested :region_id
	select r.id as region_id
	from region as r
	join sales_reps as s
	on s.region_id=r.id
	join accounts as a
	on a.sales_rep_id=s.id
	join orders as o
	on o.account_id=a.id 
) as t2
on t1.region_id=t2.region_id
where t1.regional_total_usd in
( 
     --tested max(innert.regional_total_usd)
     select max(innertable.regional_total_usd)
     from (
           --tested : region_id,regional_total_usd
           select r.id as region_id,
	       sum(o.total_amt_usd) as regional_total_usd
           from region as r
    		join sales_reps as s
     		on s.region_id=r.id
     		join accounts as a
     		on a.sales_rep_id=s.id
     		join orders as o
     		on o.account_id=a.id
    		group by r.id 
      ) as innertable      
) 
group by  t1.region_id ,
		t1.regional_total_usd;



---q3:
--tested :
select a.id as account_id,
	a.name as account_name,
    sum(o.standard_qty) as total_standard_qty_in_lifetime
from accounts as a
join orders as o
on a.id=o.account_id
group by a.id,a.name
order by total_standard_qty_in_lifetime desc;


--tested:
select a.id as account_id,
	a.name as account_name,
    sum(o.standard_qty + o.poster_qty + o.gloss_qty) as total_purchase_in_lifetime
from accounts as a
join orders as o
on a.id=o.account_id
group by a.id,a.name
order by total_purchase_in_lifetime desc;


select t2.account_id as account_id,
	t2.account_name as account_name,
    t2.total_purchase_in_lifetime as total_purchase_in_lifetime
from (
  	--tested :
	select a.id as account_id,
	a.name as account_name,
    sum(o.standard_qty) as total_standard_qty_in_lifetime
	from accounts as a
	join orders as o
	on a.id=o.account_id
	group by a.id,a.name
	order by total_standard_qty_in_lifetime desc
) as t1
join (
  	 --tested:
 	 select a.id as account_id,
		a.name as account_name,
	    sum(o.standard_qty + o.poster_qty + o.gloss_qty) as total_purchase_in_lifetime
	from accounts as a
	join orders as o
	on a.id=o.account_id
	group by a.id,a.name
	order by total_purchase_in_lifetime desc
) as t2
on t1.account_id=t2.account_id
where t2.total_purchase_in_lifetime > 
(
    select max(t3.total_standard_qty_in_lifetime)
  	from (
      		--tested
        	select a.id as account_id,
			a.name as account_name,
    		sum(o.standard_qty) as total_standard_qty_in_lifetime
			from accounts as a
			join orders as o
			on a.id=o.account_id
			group by a.id,a.name
			order by total_standard_qty_in_lifetime desc
      )as t3
  );
      
  
  
--q4:
select a.id as account_id,
	a.name as account_name,
    sum(o.total_amt_usd) as total_amt_usd_in_lifetime
from accounts as a
join orders as o
on a.id=o.account_id
group by a.id,a.name;

select a.id as account_id,
      a.name as account_name,
      w.channel as channel_name,
      count(*) as no_of_times_used
from accounts as a
join web_events as w
on a.id=w.account_id
group by a.id,a.name,w.channel;


--using limit it would be easear
select *
from (
  	select a.id as account_id,
	a.name as account_name,
    sum(o.total_amt_usd) as total_amt_usd_in_lifetime
	from accounts as a
	join orders as o
	on a.id=o.account_id
	group by a.id,a.name 
) as t1
join (
     select a.id as account_id,
      a.name as account_name,
      w.channel as channel_name,
      count(*) as no_of_times_used
	from accounts as a
	join web_events as w
	on a.id=w.account_id
	group by a.id,a.name,w.channel
)as t2
on t1.account_id=t2.account_id
where t1.total_amt_usd_in_lifetime =
	(
        select max(t3.total_amt_usd_in_lifetime)
      	from (
         	select a.id as account_id,
			a.name as account_name,
   			 sum(o.total_amt_usd) as total_amt_usd_in_lifetime
			from accounts as a
			join orders as o
			on a.id=o.account_id
			group by a.id,a.name 
        )as t3
    )        	
order by t2.no_of_times_used desc;
 
 
 --q5:
 select avg(t.total_spent) as average_total_spent_of_top_10_people
 from (
     select a.id as account_id,
   		a.name as account_name,
   		sum(o.total_amt_usd) as total_spent
   	from accounts as a
    join orders as o
    on a.id=o.account_id
   	group by a.id,a.name
    order by total_spent desc
    limit 10
 ) as t;
 

--q6:
select o.account_id as account_id,
	avg(o.total_amt_usd) as  avg
 from orders as o
 group by o.account_id
 having avg(o.total_amt_usd) > (
   	select avg(o.total_amt_usd) as average_all
   	from orders as o
   )
  

				     
				     
/*************************
*******     WITH     *****
*************************/

--events per day
select w.channel as channel_name,
	  date_trunc('day',w.occurred_at) as day,
      count(*) as events
from web_events as w
group by w.channel,date_trunc('day',w.occurred_at)
order by channel_name ,day desc;

--avg events per day
select t1.channel_name as channel_name,
	avg(t1.events) as avg_events_perday
from (
    select w.channel as channel_name,
	  date_trunc('day',w.occurred_at) as day,
      count(*) as events
	from web_events as w
	group by w.channel,date_trunc('day',w.occurred_at)
	order by channel_name ,day desc
)as t1
group by t1.channel_name
order by avg_events_perday;


--avg events per day on each channel using WITH
with tab1 as(
    select w.channel as channel_name,
	  date_trunc('day',w.occurred_at) as day,
      count(*) as events
	from web_events as w
	group by w.channel,date_trunc('day',w.occurred_at)
	order by channel_name ,day desc
)
select tab1.channel_name as channel_name,
	avg(tab1.events) as avg_events_perday
from tab1 
group by tab1.channel_name
order by avg_events_perday;


--practice for multiple table using WITH
with 
     tab1 as(
     select * 
     from web_events
     ),   --Note: use commo to seperate diff tables
	tab2 as(
	  select *
	  from accounts
	)
select *
from tab1
join tab2
on tab1.account_id=tab2.id
order by tab1.account_id;
 
/***************************
***  END OF WITH Basics ****
***************************/
  
with t1 as(select s.id as sales_rep_id,
	s.name as sales_rep_name,
    s.region_id as region_id,
    sum(o.total_amt_usd) as total
from  sales_reps as s
join accounts as a
on a.sales_rep_id = s.id
join orders as o
on o.account_id=a.id
group by s.id,s.name,s.region_id),
t2 as (
select t1.region_id as region_id,
    max(t1.total) as max_total
from t1 
group by t1.region_id )
select t1.region_id as region_id,
	r.name as region_name,
    t1.sales_rep_id as sales_rep_id,
    t1.sales_rep_name as sales_rep_name,
    t1.total as total_amt
 from t1
 join region as r
 on t1.region_id=r.id
 join t2 
 on t2.region_id=t1.region_id
 where t1.total=t2.max_total
 order by total_amt desc;
 
 
 
 with 
 t1 as(
 select r.id as region_id,
 	r.name as region_name,
    sum(total_amt_usd) as total
 from region as r
 join sales_reps as s
 on r.id=s.region_id
 join accounts as a
 on a.sales_rep_id=s.id
 join orders as o
 on o.account_id=a.id
 group by r.id,r.name
 order by total desc),
 t2 as 
 (
   select t1.region_id as region_id
   from t1
   limit 1 ) ---will gieve incorrect result when multiple region have same rank

select r.id as region_id,
	r.name as region_name,
    count(*) toatl_order_placed
from region as r
join sales_reps as s
on r.id=s.region_id
join accounts as a
on a.sales_rep_id=s.id
join orders as o
on o.account_id=a.id
--where r.id in t2  : Why ??
join t2 
on t2.region_id=r.id
group by r.id,r.name;
 
 
 
 
 with 
 t1 as(
 select r.id as region_id,
 	r.name as region_name,
    sum(total_amt_usd) as total
 from region as r
 join sales_reps as s
 on r.id=s.region_id
 join accounts as a
 on a.sales_rep_id=s.id
 join orders as o
 on o.account_id=a.id
 group by r.id,r.name
 order by total desc),
 t2 as 
 (
   select max(t1.total) as max_total
   from t1 ),
  t3 as
  (
    select t1.region_id as region_id
    from t1
    where t1.total in --t1.total in t2.max_total ? Why
    		(
              select max_total
              from t2
             )
  )
select r.id as region_id,
	r.name as region_name,
    count(*) toatl_order_placed
from region as r
join sales_reps as s
on r.id=s.region_id
join accounts as a
on a.sales_rep_id=s.id
join orders as o
on o.account_id=a.id
--where r.id in t2  : Why ??
join t3
on t3.region_id=r.id
group by r.id,r.name;
 

with 
t1 as
(
   select distinct a.id as account_id
   from accounts as a
 )
 select * 
 from orders as o
 where o.account_id in --you have to select all the desired data after IN
 (
   select account_id
   from t1
 );
 
 
 with 
 t1 as(
 select r.id as region_id,
 	r.name as region_name,
    sum(total_amt_usd) as total
 from region as r
 join sales_reps as s
 on r.id=s.region_id
 join accounts as a
 on a.sales_rep_id=s.id
 join orders as o
 on o.account_id=a.id
 group by r.id,r.name
 order by total desc),
 t2 as 
 (
   select max(t1.total) as max_total
   from t1 ),
  t3 as
  (
    select t1.region_id as region_id
    from t1
    where t1.total in --t1.total in t2.max_total ? Why
    		(
              select max_total
              from t2
             )
  )
select r.id as region_id,
	r.name as region_name,
    count(*) toatl_order_placed
from region as r
join sales_reps as s
on r.id=s.region_id
join accounts as a
on a.sales_rep_id=s.id
join orders as o
on o.account_id=a.id
--where r.id in t2  : Why ??
/*
join t3
on t3.region_id=r.id
*/
where r.id in (
  	select t3.region_id 
    from t3
  )
  --put join or IN, both will work
group by r.id,r.name;


--from q3:Quiz- With,Lession-4







