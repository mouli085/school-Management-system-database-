set serveroutput on;
declare 
t_name TEACHER.NAME%type;
begin
t_name:='a';
search_for_teacher_timetable(t_name);
end;
/