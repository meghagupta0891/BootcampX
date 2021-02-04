select count(*) as total_assistances, students.name as name 
from assistance_requests
join students on assistance_requests.student_id = students.id
where students.name ='Elliot Dickinson'
group by students.name; 