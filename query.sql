select * from tab;
select * from student;
select name ,roll, gpa,gender from student;
describe student;
alter table student add gender varchar(6);
alter table student add gpa number(3,2);
update student set gpa=4.5;
update student set gender='male';
update student set gender='female' where school_id=0002 ;
update student set gpa=3.9 where roll=003;
select school_id,avg(gpa) from student group by school_id;

delete from student where roll=001;
select distinct(gpa) from student;

select name, id, (salary*2),school_id from teacher;
select name, id, (salary*2),school_id from teacher where salary <25000;
select name, id, (salary*2),school_id from teacher where salary in(25000);
select name, id, (salary*2),school_id from teacher order by salary desc;
select name, id, (salary*2),school_id from teacher order by salary ,id,school_id;
select roll, name from student where name like '%bc%';

select salary,count(id) from teacher group by salary;
select salary,count(id) from teacher group by salary having count(id)>=2 ;

select name, roll, gpa,gender from student where course_no in(select course_no from course where teacher_id=00004);

select s.name,s.roll,t.name,t.id from student s, teacher t where s.course_no=(select course_no from course where teacher_id=00004);