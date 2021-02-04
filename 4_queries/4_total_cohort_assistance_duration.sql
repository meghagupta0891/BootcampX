select cohorts.name as cohort,sum(completed_at - started_at) as total_duration
from assistance_requests
join students on students.id = assistance_requests.student_id
join cohorts on cohorts.id = cohort_id
group by cohorts.name
order by total_duration;