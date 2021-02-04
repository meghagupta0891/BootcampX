select count(*) as total_assistances, teachers.name as name 
from assistance_requests
join teachers on assistance_requests.teacher_id = teachers.id
where teachers.name ='Waylon Boehm'
group by teachers.name; 

