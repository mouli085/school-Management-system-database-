set serveroutput on; 
begin
insert_in_school;
insert_in_post;
insert_in_teacher;
insert_in_course;

insert_in_maxroll;
insert_in_student;
end;
/
show error;