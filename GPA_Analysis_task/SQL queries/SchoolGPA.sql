select School_Name, round(avg(GPA),2) as GPA
from charter.perf_task.student_GPA
join charter.perf_task.schools
on student_GPA.SchoolID = schools.SchoolID
group by School_Name
order by 2 desc