-- select (
--     select count(assignments)
--     from assignments
-- )-count(assignment_submissions) as total_incomplete
-- from assignment_submissions
-- join students on students.id = student_id
-- where students.name = 'Ibrahim Schimmel';

-- select count(students) as total_students
-- from students
-- join cohorts on cohorts.id = cohort_id
-- group by cohorts;

-- select avg(totals_table.total_students) as average_students
-- from (
--     select count(students) as total_students, cohorts.name as cohort_name
--     from students 
--     join cohorts on cohorts.id = cohort_id
--     group by cohorts.name
-- ) as totals_table;


-- select assignment_id
-- from assignment_submissions
-- join students on students.id = student_id where students.name = 'Ibrahim Schimmel';

-- select assignments.name from assignments 
-- where id not in 
-- (
--     select assignment_id
--     from assignment_submissions 
--     join students on students.id = student_id
--     where students.name = 'Ibrahim Schimmel'
-- );

