Set serveroutput on;

Declare
School_name school.name%type;
School_location school.location%type;
School_contact school.contact_no%type;
Begin

for counter in 1..4

loop
select name, location, contact_no 
into school_name, school_location, school_contact
from school where id= counter;
DBMS_OUTPUT.PUT_LINE ( 'Id: '||counter );
DBMS_OUTPUT.PUT_LINE ( 'Name: '||school_name);
DBMS_OUTPUT.PUT_LINE ('Location: '||school_location);
DBMS_OUTPUT.PUT_LINE ('Contact no'||school_contact );
DBMS_OUTPUT.PUT_LINE ( '---------------------------');
end loop;


end;
/
