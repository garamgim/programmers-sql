select ROUTE, concat(round(sum(d_between_dist), 1), 'km') as TOTAL_DISTANCE, concat(round(avg (d_between_dist), 2), 'km') as AVERAGE_DISTANCE
from subway_distance
group by route
order by round(sum(d_between_dist), 1) desc

-- concat으로 문자열로 만든 후에 해당 alias로 정렬하면 문자열이기 때문에 제대로 정렬 안될 수 있음