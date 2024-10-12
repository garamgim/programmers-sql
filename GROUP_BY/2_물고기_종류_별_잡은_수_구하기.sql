select count(*) as FISH_COUNT, FISH_NAME
from fish_info as f
join fish_name_info as n
on f.fish_type = n.fish_type
group by n.fish_name
order by FISH_COUNT desc