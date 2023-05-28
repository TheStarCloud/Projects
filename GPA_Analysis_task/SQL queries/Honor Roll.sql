/*alter table charter.perf_task.grades
add column grade_points numeric; 

update charter.perf_task.grades
set grade_points = case
    when Letter_Grade = "A+" then 4.3 
    when Letter_Grade = "A" then 4.0 
    when Letter_Grade = "A-" then 3.7 
    when Letter_Grade = "B+" then 3.3 
    when Letter_Grade = "B" then 3.0 
    when Letter_Grade = "B-" then 2.7 
    when Letter_Grade = "C+" then 2.3 
    when Letter_Grade = "C" then 2.0 
    when Letter_Grade = "C-" then 1.7 
    when Letter_Grade = "D+" then 1.3 
    when Letter_Grade = "D" then 1.0 
    when Letter_Grade = "D-" then 0.7 
    when Letter_Grade = "F" then 0
    else grade_points
    end
where Letter_Grade is not null;

update charter.perf_task.grades
set grade_points = case
    when course_type = "Honors" then grade_points + 0.5
    when course_type = "AP" then grade_points + 1.0
    else grade_points
    end 
where Letter_Grade != "F";  */

select Student_Number, Round(avg(grade_points), 2) as GPA 
from charter.perf_task.grades
where Course_Title not like "Advisory%"
group by Student_Number
having GPA >= 4.5
order by GPA desc