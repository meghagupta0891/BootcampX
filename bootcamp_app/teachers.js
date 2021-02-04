const { Pool } = require('pg');

const pool = new Pool({
  user: 'vagrant',
  password: '123',
  host: 'localhost',
  database: 'bootcampx'
});

const cohort = process.argv[2];

const values = [];
values.push(`${cohort}`);

pool.query(`
select distinct teachers.name as teacher, cohorts.name as cohort, count(assistance_requests) as total_assistances 
from teachers
join assistance_requests on teacher_id = teachers.id
join students on student_id = students.id 
join cohorts on cohort_id = cohorts.id
where cohorts.name = $1
group by teachers.name, cohorts.name 
order by teacher; 
`,values)
.then(res => {
  res.rows.forEach(row => {
      console.log(`${row.cohort}:${row.teacher}`);
  });
})
.catch(err => console.error('query error', err.stack));
