select cohorts.name, avg((completed_at - started_at)) as average_assistance_time
from  assistance_requests
join students on students.id = assistance_requests.student_id
join cohorts on cohorts.id = cohort_id
group by cohorts.name  
order by average_assistance_time DESC
limit 1;