Set serveroutput on;

declare 
sc_id integer:=1001;
t_id integer:=11001;
j integer:=1;
i integer:=1;
jy TEACHER.JOINYEAR%type;
begin

while sc_id<=1003
loop

while j<=3 
loop
joinyr(t_id, sc_id, jy);
if jy<=1992
then inc_salary(t_id, sc_id);
end if;
--dbms_output.put_line(jy);

j:=j+1;
t_id:=t_id+1;
end loop;
j:=1;
t_id:=11001+i*1000;
sc_id:=sc_id+1;
i:=i+1;
end loop;

end;
/

