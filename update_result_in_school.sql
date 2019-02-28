set serveroutput on;
create or replace procedure update_result_in_school is
    f utl_file.file_type;
    line varchar(10000);
    school_id STUDENT.SCHOOL_ID%type;
    year STUDENT.YEAR%type;
    nyear STUDENT.YEAR%type;
    roll STUDENT.ROLL%type;
    result STUDENT.LASTRESULT%type;
    maxrol MAXROLL.LASTROLL%type;
    begin
    f:=utl_file.fopen('MYD','result_update.csv','r');
    if utl_file.is_open(f) then
        utl_file.get_line(f,line,10000);
    loop
    begin
        utl_file.get_line(f,line,10000);
        school_id:=regexp_substr(line,'[^,]+',1,1);
        year:=regexp_substr(line,'[^,]+',1,2);
        roll:=regexp_substr(line,'[^,]+',1,3);
        result:=regexp_substr(line,'[^,]+',1,4);
        if result>=132 then     
        nyear:=year+1;
        select lastroll into maxrol from maxroll where school_id=school_id and year=nyear;
        maxrol:=maxrol+1;
        dbms_output.put_line(maxrol);
         update student set lastresult=result, roll=maxrol, year=nyear where school_id=school_id and year=year and roll=roll; 
         else 
          update student set lastresult=result where school_id=school_id and year=year and roll=roll; 
         end if;
        commit;
    exception 
    when no_data_found then exit;
    end;
    end loop;
    end if;
utl_file.fclose(f);
end;
/