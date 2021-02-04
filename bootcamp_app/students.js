const { Pool } = require('pg');

const pool = new Pool({
  user: 'vagrant',
  password: '123',
  host: 'localhost',
  database: 'bootcampx'
});

const values = [process.argv[3],`${process.argv[2]}%`];

pool.query(`
SELECT students.id as id, students.name as name, cohorts.name as cohort
FROM students JOIN cohorts ON cohorts.id = cohort_id 
WHERE cohorts.name LIKE $2
LIMIT $1;
`,values)
.then(res => {
  res.rows.forEach(row => {
      console.log(`${row.name} has id of ${row.id} and was in the ${row.cohort} cohort`);
  });
})
.catch(err => console.error('query error', err.stack));


