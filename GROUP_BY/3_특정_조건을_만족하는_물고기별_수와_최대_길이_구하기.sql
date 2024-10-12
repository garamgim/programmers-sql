select count(*) as FISH_COUNT, max(length) as MAX_LENGTH, FISH_TYPE
from fish_info
group by fish_type
having avg(coalesce(length, 10)) >= 33
order by fish_type