drop table maxroll;
drop table student;
drop table course;
drop table teacher;
drop table POST;
drop table school;

create table school( 
	name varchar(200),
	id number(4) check(id>=1001 and id<2000),
	district varchar(50),
	email varchar(100),
	contact_no varchar(14),
	capacity number(4) check (capacity>=1),
	total_student integer default (0),
	total_teacher integer default (0),
	capacity_for_teacher integer check(capacity_for_teacher>=1),
	primary key (id)
);

create table POST(
	tittle varchar(25),
	basicSalary number(7) check (basicSalary>=8000)
);

create table teacher(
	name varchar(100) not null,
	id number(5) unique,
	contact_no varchar(14) not null,
	gender varchar(7) not null,
	address varchar(100),
	school_id number(4),
	email varchar(100),
	birthdate varchar(20) not null,
	joinYear integer not null check(joinYear>=1985),
	t_post varchar(25),
	salary number(7) default(8000) check(salary>=8000) ,
	primary key (id,school_id),
	foreign key (school_id) references school(id)
);

create table course(
	title varchar(100) ,
	teacher_id number(5),
	no number(4) not null,
	class_room number(3),
	school_id number(4),
	year integer check (year>=6),
	class_hour varchar(20),
	primary key (no,year,school_id),
	foreign key (teacher_id) references teacher(id),
	foreign key (school_id) references school(id)
);

create table student(
	name varchar(100) not null,
	roll number(3),
	contact_no varchar(14),
	gender varchar(7),
	address varchar(48),
	school_id number(4),
	email varchar(100),
	year integer,
	birthdate varchar(20),
	lastResult integer,
	primary key (roll,school_id,year),
	foreign key (school_id) references school(id)
);

create table maxroll(
    school_id number(4),
    year integer check(year>=1),
    lastroll number(3) default (0),
    primary key(school_id,year)    
);