set serveroutput on;
create or replace trigger t_salary_update_post
before update of t_post,address on teacher 
for each row
declare
basic POST.BASICSALARY%type;
dist SCHOOL.DISTRICT%type;
total school.total_teacher%type;
capaci school.capacity_for_teacher%type;
begin
    select basicSalary into basic from post where tittle = :new.t_post;
    select district into dist from school where id= :new.school_id;
    if dist='Dhaka' or dist='Chattagram' then
        :new.salary := basic*1.50;
    else
        :new.salary := basic*1.45;
    end if;
end;
/
show error;