Set serveroutput on;
Create or replace procedure joinyr (t_id in number, s_id in number,jy out number) is

begin
select joinyear into jy from teacher where school_id=s_id and id=t_id;
end;
/
Create or replace procedure inc_salary (t_id in number, s_id in number) is
sal teacher.salary%type;
begin
select salary into sal from teacher where id=t_id and school_id=s_id;
sal:=sal+(sal*.1);
update teacher set salary = sal where id=t_id and school_id=s_id;
dbms_output.put_line('Teacher id:'||t_id||'  salary: '||sal);
end;
/
