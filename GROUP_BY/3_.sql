-- 1번째 코드

select month(start_date) as MONTH, h.CAR_ID, count(*) as RECORDS
from car_rental_company_rental_history as h
join (
    select car_id, count(*) as COUNT
    from car_rental_company_rental_history
    where start_date between '2022-08-01' and '2022-10-31'
    group by car_id
) as ct
on h.car_id = ct.car_id and ct.count >= 5
where start_date between '2022-08-01' and '2022-10-31'
group by month(start_date), car_id
order by month(start_date), car_id desc


-- 2번째 코드

select month(start_date) as MONTH, h.CAR_ID, count(*) as RECORDS
from car_rental_company_rental_history as h
where car_id in (
    select car_id
    from car_rental_company_rental_history
    where start_date between '2022-08-01' and '2022-10-31'
    group by car_id
    having count(*) >= 5
) and start_date between '2022-08-01' and '2022-10-31'
group by month(start_date), car_id
order by month(start_date), car_id desc


-- start_date between '2022-08-01' and '2022-10-31'로 한번 더 걸러주지 않으면
-- count 5 이상인 애들의 다른 날짜 기록까지 집계한다