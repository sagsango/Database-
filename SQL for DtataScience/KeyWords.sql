with dpt1 as ( ),
     dpt2 as ( ),
     dpt3 as ( )

[select ,select distinct ] ___ as c1, ___ as c2, ___ as c3
from ___ as t1
join ___ as t2
on t1.___ = t2.___
where   t1.___ [ in , = , >= , <= , != , like ] [ and , or ][ between l and r ]
having  [ aggrigration : sum ,avg , count ..]
order by __ desc
limit MAX_ROW;

