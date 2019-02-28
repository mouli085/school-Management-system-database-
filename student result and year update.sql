set serveroutput on;
create or replace trigger student_result_and_year_update
before update of lastresult on student 
referencing old as o new as n
for each row
declare
newClass STUDENT.YEAR%type;
maxrl MAXROLL.LASTROLL%type;
oldroll STUDENT.ROLL%type;
lastroll0fOldClass MAXROLL.LASTROLL%type;
begin
newClass:=:n.year;
if :n.lastresult>=132 then
    newClass:=:n.year+1;
    select lastroll into maxrl from maxroll where school_id=:n.school_id and year=newclass;
    maxrl:=maxrl+1;
    select lastroll into lastroll0fOldClass from maxroll where school_id=:n.school_id and year=:n.year;
    oldroll:= :n.roll;
    if lastrollofOldClass= oldroll then 
    lastroll0fOldClass:=lastroll0fOldClass-1;
    update maxroll set lastroll=lastroll0fOldClass where school_id=:n.school_id and year=:n.year;
    end if;
    update maxroll set lastroll=maxrl where school_id=:n.school_id and year=newClass;
    update student set roll=maxrl where school_id=:n.school_id and year=newClass and roll=:o.roll;
    update student set year=year+1 where  school_id=:n.school_id and year=:n.year and roll=:o.roll;
    
    
    end if;
end;
/