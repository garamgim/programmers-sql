select writer_id as USER_ID, NICKNAME, sum(price) as TOTAL_SALES
from used_goods_board as b
join used_goods_user as u
on b.writer_id = user_id
where status = 'DONE'
group by writer_id
having sum(price) >= 700000
order by TOTAL_SALES
