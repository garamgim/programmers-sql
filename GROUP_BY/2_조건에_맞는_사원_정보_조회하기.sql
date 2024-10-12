select sum(score) as SCORE, g.EMP_NO, EMP_NAME, POSITION, EMAIL
from hr_employees as e
right join hr_grade as g
on e.emp_no = g.emp_no
group by g.emp_no 
order by sum(score) desc
limit 1