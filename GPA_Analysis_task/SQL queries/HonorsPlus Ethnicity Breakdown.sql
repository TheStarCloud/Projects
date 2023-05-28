with eth_count as (select Ethnicity, count(*) as Num_students
from charter.perf_task.demographics
group by Ethnicity),

honorsplus as (select distinct demographics.Student_Number, course_type, Ethnicity
from charter.perf_task.demographics
join charter.perf_task.grades
on demographics.Student_Number = grades.Student_Number
where course_type = "AP" or course_type = "Honors"),

unique_honorsplus as (select distinct Student_Number, Ethnicity
from honorsplus),

count_unique_honorsplus as (select Ethnicity, count(*) as Num_honorsplus_students
from unique_honorsplus
group by Ethnicity)

select eth_count.Ethnicity, eth_count.Num_students, count_unique_honorsplus.Num_honorsplus_students, round(count_unique_honorsplus.Num_honorsplus_students * 100 / eth_count.Num_students , 1) as Percent_of_EthnicGroup_inHonorsPlus
from eth_count join count_unique_honorsplus 
on eth_count.Ethnicity = count_unique_honorsplus.Ethnicity