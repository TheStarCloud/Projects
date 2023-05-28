select IFNULL(Student_has_IEP_, false) as Has_IEP, count(*) as Num_Students, Round((Count(IFNULL(Student_has_IEP_, false))* 100 / (Select Count(*) From charter.perf_task.demographics)),1) as Percent_of_Population 
from charter.perf_task.demographics 
group by Student_has_IEP_;

select IFNULL(Student_has_IEP_, false) as Has_IEP, round(avg(GPA),2) as GPA
from charter.perf_task.demographics 
join charter.perf_task.student_GPA
on demographics.Student_Number = student_GPA.Student_Number
group by Student_has_IEP_