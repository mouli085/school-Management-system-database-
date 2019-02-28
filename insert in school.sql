set serveroutput on;
create or replace procedure insert_in_school is
    f utl_file.file_type;
    line varchar(10000);
    name SCHOOL.NAME%type;
    id SCHOOL.ID%type;
    location SCHOOL.DISTRICT%type;
    email SCHOOL.EMAIL%type;
    contact_no SCHOOL.CONTACT_NO%type;
    capacity SCHOOL.CAPACITY%type;
    capacity_for_teacher school.capacity_for_teacher%type;
    begin
    f:=utl_file.fopen('MYD','insert_school.csv','r');
    if utl_file.is_open(f) then
        utl_file.get_line(f,line,10000);
    loop
    begin
        utl_file.get_line(f,line,10000);
        name:=regexp_substr(line,'[^,]+',1,1);
        id:=regexp_substr(line,'[^,]+',1,2);
        location:=regexp_substr(line,'[^,]+',1,3);
        email:=regexp_substr(line,'[^,]+',1,4);
        contact_no:=regexp_substr(line,'[^,]+',1,5);
        capacity:=regexp_substr(line,'[^,]+',1,6);
        capacity_for_teacher:=regexp_substr(line,'[^,]+',1,7);
        insert into school(name,id,district,email,contact_no,capacity,capacity_for_teacher) 
            values (name,id,location,email,contact_no,capacity,capacity_for_teacher);
        commit;
    exception 
    when no_data_found then exit;
    end;
    end loop;
    end if;
utl_file.fclose(f);
end;



create or replace procedure insert_in_post is
    f utl_file.file_type;
    line varchar(10000);
    tittle POST.TITTLE%type;
    basic POST.BASICSALARY%type;
begin
    f:=utl_file.fopen('MYD','insert in post.csv','r');
    if utl_file.is_open(f) then
        utl_file.get_line(f,line,10000);
    loop
    begin
        utl_file.get_line(f,line,10000);
        tittle:=regexp_substr(line,'[^,]+',1,1);
        basic:=regexp_substr(line,'[^,]+',1,2);
        insert into post values(tittle, basic);
        commit;
    exception 
    when no_data_found then exit;
    end;
    end loop;
    end if;
utl_file.fclose(f);
end;


create or replace procedure insert_in_teacher is
    f utl_file.file_type;
    line varchar(10000);
    name teacher.NAME%type;
    id teacher.ID%type;
    gender TEACHER.GENDER%type;
    address TEACHER.ADDRESS%type;
    email teacher.EMAIL%type;
    contact_no teacher.CONTACT_NO%type;
    school_id TEACHER.SCHOOL_ID%type;
    birthdate TEACHER.BIRTHDATE%type;
    joinyear TEACHER.JOINYEAR%type;
    t_post TEACHER.T_POST%type;
begin
    f:=utl_file.fopen('MYD','teacher_insert.csv','r');
    if utl_file.is_open(f) then
        utl_file.get_line(f,line,10000);
        
    loop
    begin
        utl_file.get_line(f,line,10000);
        name:=regexp_substr(line,'[^,]+',1,1);
        id:=regexp_substr(line,'[^,]+',1,2);
        
        contact_no:=regexp_substr(line,'[^,]+',1,3);
        gender:=regexp_substr(line,'[^,]+',1,4);
        address:=regexp_substr(line,'[^,]+',1,5);
        school_id:=regexp_substr(line,'[^,]+',1,6);
        email:=regexp_substr(line,'[^,]+',1,7);
        birthdate:=regexp_substr(line,'[^,]+',1,8);
        joinyear:=regexp_substr(line,'[^,]+',1,9);
        t_post:=regexp_substr(line,'[^,]+',1,10);
        insert into teacher(name,id,contact_no,gender,address,school_id,email,
        birthdate,joinyear,t_post) values(name,id,contact_no,gender,address,
        school_id,email,birthdate,joinyear,t_post);
        commit;
    exception 
    when no_data_found then exit;
    end;
    end loop;
    end if;
utl_file.fclose(f);
end;

create or replace procedure insert_in_course is
    f utl_file.file_type;
    line varchar(10000);
    
    tittle COURSE.TITLE%type;
    no COURSE.NO%type;
    year COURSE.YEAR%type;
    classhour COURSE.CLASS_HOUR%type;
    classroom COURSE.CLASS_ROOM%type;
    school_id COURSE.SCHOOL_ID%type;
    teacher_id COURSE.TEACHER_ID%type;
begin
    f:=utl_file.fopen('MYD','course insert.csv','r');
    if utl_file.is_open(f) then
        utl_file.get_line(f,line,10000);
    loop
    begin
        utl_file.get_line(f,line,10000);
        
        tittle:=regexp_substr(line,'[^,]+',1,1);
        no:=regexp_substr(line,'[^,]+',1,2);
        year:=regexp_substr(line,'[^,]+',1,3);
        classhour:=regexp_substr(line,'[^,]+',1,4);
        classroom:=regexp_substr(line,'[^,]+',1,5);
        school_id:=regexp_substr(line,'[^,]+',1,6);
        teacher_id:=regexp_substr(line,'[^,]+',1,7);
        insert into course values(tittle,teacher_id,no,classroom,school_id,year,classhour);
        commit;
    exception 
    when no_data_found then exit;
    end;
    end loop;
    end if;
utl_file.fclose(f);
end;


create or replace procedure insert_in_student is
    f utl_file.file_type;
    line varchar(10000);
    name STUDENT.NAME%type;
    roll STUDENT.ROLL%type;
    contact_no STUDENT.CONTACT_NO%type;
    gender STUDENT.GENDER%type;
    address STUDENT.ADDRESS%type;
    schoolid STUDENT.SCHOOL_ID%type;
    email STUDENT.EMAIL%type;
    year student.year%type;
    birthdate STUDENT.BIRTHDATE%type;
    lastresult STUDENT.LASTRESULT%type;
begin
    f:=utl_file.fopen('MYD','insert in student.csv','r');
    if utl_file.is_open(f) then
        utl_file.get_line(f,line,10000);
        
    loop
    begin
        utl_file.get_line(f,line,10000);
        name:=regexp_substr(line,'[^,]+',1,1);
        roll:=regexp_substr(line,'[^,]+',1,2);
        contact_no:=regexp_substr(line,'[^,]+',1,3);
        gender:=regexp_substr(line,'[^,]+',1,4);
        address:=regexp_substr(line,'[^,]+',1,5);
        schoolid:=regexp_substr(line,'[^,]+',1,6);
        email:=regexp_substr(line,'[^,]+',1,7);
        year:=regexp_substr(line,'[^,]+',1,8);
        birthdate:=regexp_substr(line,'[^,]+',1,9);
        lastresult:=regexp_substr(line,'[^,]+',1,10);
        insert into student (name,roll,contact_no,gender,year,school_id,email,address,birthdate,lastresult) 
        values(name,roll,contact_no,gender,year,schoolid,email,address,birthdate,lastresult);
        commit;
    exception 
    when no_data_found then exit;
    end;
    end loop;
    end if;
utl_file.fclose(f);
end;


create or replace procedure insert_in_maxroll is
    f utl_file.file_type;
    line varchar(10000);
    school_id maxroll.school_id%type;
    year maxroll.year%type;
begin
    f:=utl_file.fopen('MYD','insert in maxroll.csv','r');
    if utl_file.is_open(f) then
        utl_file.get_line(f,line,10000);
    loop
    begin
        utl_file.get_line(f,line,10000);
        school_id:=regexp_substr(line,'[^,]+',1,1);
        year:=regexp_substr(line,'[^,]+',1,2);
        insert into maxroll(school_id, year) values(school_id, year);
        commit;
    exception 
    when no_data_found then exit;
    end;
    end loop;
    end if;
utl_file.fclose(f);
end;
/
show error;