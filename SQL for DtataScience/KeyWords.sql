--- See https://www.javatpoint.com/mysql-tutorial
--- For Create, Update, and some other importent jargans


/* NOTE: There is only one with keyword */
with dpt1 as ( ),
     dpt2 as ( ),
     dpt3 as ( )

[select ,select distinct ] ___ as c1, ___ as c2, ___ as c3,
        case 
            when total >= 2000 then 'At least 2000'
            when total < 1000 then 'Less than 1000'
            else 'Between 1000 and 2000'
        end as c3
from ___ as t1
join ___ as t2
on t1.___ = t2.___    /* XXX: Here you can put like keyword also */
where   t1.___ [ in , = , >= , <= , != , like ] [ and , or ][ between l and r ]
group by e.t1,e.t2,...e.tn
having  [condition on aggrigration : sum ,avg , count ,max ,min ..]
order by cj,ck,cz desc
limit MAX_ROW


union


select tf.*
from tf;



-------------------------------------------------------------------------------------------------------------------------------
Q.1 how to calculate median?
