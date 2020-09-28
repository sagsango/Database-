Q : Find all costumer having order >= average on of orders per costumer
with 
t1 as (
  	select count(*) as total_order
  	from orders ),
t2 as(
  	select count(*) as total_account
    from accounts ),
t3 as (  
    select  a.id, count(*) as cnt
    from accounts as a
    join orders as o
    on a.id = o.account_id
    group by a.id
    order by a.id )

select t3.id , t3.cnt
from t3 
cross join t2  
cross join t1
where cnt >= total_order / total_account;

-- see this table for better understanding
with
t1 as (
  	select count(*) as total_order
  	from orders ),
t2 as(
  	select count(*) as total_account
    from accounts ),
t3 as (  
    select  a.id, count(*) as cnt
    from accounts as a
    join orders as o
    on a.id = o.account_id
    group by a.id
    order by a.id )

select *
from t3 
cross join t2  
cross join t1;
--where cnt >= total_order / total_account
