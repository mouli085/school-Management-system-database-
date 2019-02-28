set serveroutput on;
create or replace function f(tm in varchar2, yr in integer, class_h out varchar2)
return varchar2 is
c_tittle course.title%type;
id teacher.id%type;
begin
    select title into c_tittle from course where teacher_id in( select id from teacher where name like '%'||tm||'%') and year=yr;
    select to_char( class_hour, 'HH24:MI:SS' ) into class_h from course where teacher_id in( select id from teacher where name like '%'||tm||'%') and year=yr;
    return c_tittle;
end;
