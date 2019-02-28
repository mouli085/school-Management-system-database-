set serveroutput on;
create or replace trigger t_salary_insert
before insert on teacher 
for each row
declare
basic POST.BASICSALARY%type;
dist SCHOOL.DISTRICT%type;
total school.total_teacher%type;
capaci school.capacity_for_teacher%type;
begin
    select basicSalary into basic from post where tittle = :new.t_post;
    select district into dist from school where id= :new.school_id;
    select total_teacher into total from school where id =:new.school_id;
    select capacity into capaci from school where id =:new.school_id;
    if(capaci-total)>=1 then
        total:=total+1;
        update school set total_teacher=total where id= :new.school_id;
    else 
        dbms_output.put_line('no more adding teacher plz');
        :new.name :=null;
    
    end if;
    if dist='Dhaka' or dist='Chattagram' then
        :new.salary := basic*1.50;
    else
        :new.salary := basic*1.45;
    end if;
end;
/
show error;