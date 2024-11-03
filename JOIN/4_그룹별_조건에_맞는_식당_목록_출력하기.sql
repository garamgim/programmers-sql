select MEMBER_NAME, REVIEW_TEXT, date_format(review_date, '%Y-%m-%d') as REVIEW_DATE
from rest_review as r
join member_profile as p
on r.member_id = p.member_id
join (
    select member_id, count(*) as cnt
    from rest_review
    group by member_id
    order by cnt desc
    limit 1
) as c
on r.member_id = c.member_id
order by REVIEW_DATE, REVIEW_TEXT;
