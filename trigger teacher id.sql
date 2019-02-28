set serveroutput on;
create or replace trigger t_update
before update on teacher
for each row
declare
no COURSE.NO%type;
t_id teacher.id%type;
t_id1 teacher.id%type;
jy teacher.joinyear%type;
begin
t_id:= :old.id;
t_id1:= :new.id;

update course set teacher_id=t_id1 where teacher_id=t_id;
end;
/

