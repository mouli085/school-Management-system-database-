set serveroutput on;
declare
ti POST.TITTLE%type;
basic_salary POST.BASICSALARY%type;
begin
ti:='Assistant Teacher';
basic_salary:=48000;
update_post_table_basic_salary(ti, basic_salary);
end;
/
show error