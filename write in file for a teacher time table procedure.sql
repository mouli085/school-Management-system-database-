set serveroutput on;
create or replace procedure search_for_teacher_timetable(kin in varchar2)is
    f utl_file.file_type;
    name teacher.name%type;
    id teacher.id%type;
    tittle course.title%type;
    class_hour course.no%type;
    class_room course.class_room%type;
    cursor ct is
    select title,no,class_room from course where teacher_id=id;
    cursor ct1 is
    select id, name from teacher where lower(name) like lower('%'||kin||'%');
   
begin

    f:=utl_file.fopen('MYD','teacher_timetable.csv','a');
    utl_file.put(f,'name'||','||'id'||','||'tittle' || ',' ||' no'||','|| 'class_room');
    utl_file.new_line(f);
     for c_record1 in ct1
     loop
     id:=c_record1.id;
     name:=c_record1.name;
    for c_record in ct
    loop
    tittle:=c_record.title;
    class_hour:=c_record.no;
    class_room:=c_record.class_room;
    utl_file.put(f,name||','||id||','||tittle || ',' || class_hour||','|| class_room);
    utl_file.new_line(f); 
    end loop;
    end loop;
utl_file.fclose(f);
end;
/
show error;