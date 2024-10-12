select r.FOOD_TYPE, REST_ID, REST_NAME, r.FAVORITES
from rest_info as r
join (
    select food_type, max(favorites) as favorites
    from rest_info
    group by food_type
) as m
on r.favorites = m.favorites AND r.food_type = m.food_type
order by r.food_type desc