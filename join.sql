SELECT te.name, sc.name, sc.id 
from teacher te inner join school sc 
on sc.id = te.school_id ; 
SELECT te.name , te.id, co.course_name 
from teacher te left join course co 
on te.id = CO.TEACHER_ID;
SELECT te.name , te.id, co.course_name 
from course co right join teacher te 
on CO.TEACHER_ID = te.id ;
select s.name, s.school_id , co.course_name, co.course_no, co.school_id 
from student s full join course co 
on s.course_no= co.course_no;
