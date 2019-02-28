set serveroutput on;
create or replace procedure update_post_table_basic_salary(ti in varchar2, basic_salary in number)is
begin 
update post set basicsalary=basic_salary where tittle=ti;
update teacher set t_post=ti where t_post=ti;
end;
/