Set Serveroutput ON
Declare
male_salary teacher.salary%type;
female_salary teacher.salary%type;
Begin
select avg(salary) into male_salary from teacher where gender= 'Male';
select avg(salary) into female_salary from teacher where gender= 'Female';
if male_salary> female_salary then 
DBMS_OUTPUT.PUT_line('Average Male Teachers salary: '||male_salary);
else
DBMS_OUTPUT.PUT_line('Average Female Teachers salary: '||female_salary);
end if;
End;
/