Set serveroutput on;

DECLARE
type type_name is varray(4) of school.name%type;
schoolarray type_name:= type_name();

BEGIN
for i in 1..4
loop
schoolarray.extend();
select name into schoolarray(i) from school where id =i;
end loop;
for i in 1..4
loop
DBMS_OUTPUT.PUT_line('schoolname:  '||schoolarray(i));
end loop;
end;
/