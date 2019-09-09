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
