set serveroutput on;
declare
    t_name teacher.name%type;
    class_h varchar(20);
    tittle course.title%type;
    tm varchar(100);
    yr COURSE.YEAR%type;
begin
    tm:='Maria';
    yr:=6;
    tittle:=f(tm,yr,class_h);
    dbms_output.put_line('tittle: '||tittle||' ,year: '||yr||' ,class hour: '||class_h);
end;
    /
    

