select h.flavor
from first_half as h
left join (
    select flavor, sum(total_order) as total_order
    from july
    group by flavor
) as j
on h.flavor = j.flavor
order by h.total_order + j.total_order desc
limit 3;
