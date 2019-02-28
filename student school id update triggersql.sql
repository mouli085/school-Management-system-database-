set serveroutput on;
create or replace trigger student_school_id_update
before update of school_id on student 
referencing old as o new as n
for each row
declare
oldtotal SCHOOL.TOTAL_STUDENT%type;
newtotal SCHOOL.TOTAL_STUDENT%type;
capaci SCHOOL.CAPACITY%type;
newroll STUDENT.ROLL%type;

begin
select total_student into oldtotal from school where id= :o.school_id;
select total_student into newtotal from school where id= :n.school_id;
select capacity into capaci from school where id= :n.school_id;
if(capaci-newtotal)>=1 then
    newtotal:=newtotal+1;
    oldtotal:=oldtotal-1;
    newroll:=1;
    select lastroll into newroll from maxroll where school_id=:n.school_id and year=:n.year;
    :n.roll:=newroll+1;    
else
    dbms_output.put_line('can not be admitted in this school');
    :n.school_id :=:o.school_id;
end if;
end;
/
show error;