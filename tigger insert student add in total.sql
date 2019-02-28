set serveroutput on;
create or replace trigger student_add_in_total
before insert on student 
for each row
declare 
capaci SCHOOL.CAPACITY%type;
total SCHOOL.TOTAL_STUDENT%type;
lastroll maxroll.lastroll%type;
begin
select total_student into total from school where id= :new.school_id;
select capacity into capaci from school where id= :new.school_id;
select lastroll into lastroll from maxroll where school_id= :new.school_id and year=:new.year;
if(:new.roll>lastroll) then
    update maxroll set lastroll=:new.roll where school_id= :new.school_id and year=:new.year; 
    end if;
if(capaci-total)>=1 then
    total:=total+1;
    update school set total_student=total where id= :new.school_id;
    
else 
    dbms_output.put_line('no more admission plz');
    :new.name :=null;
    
end if;

end;
/
show error;