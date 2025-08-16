select 
    stu.roll_number,
    stu.name
from student_information stu
join examination_marks exam
on stu.roll_number = exam.roll_number
where exam.subject_one + exam.subject_two + exam.subject_three < 100
