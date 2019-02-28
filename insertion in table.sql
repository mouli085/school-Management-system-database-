set serveroutput on; 
begin
insert_in_school;
insert_in_teacher;
end;
/
insert into course (title,no, school_id,class_hour, teacher_id, class_room, year) 
	values	('Bengali for class 6',6001,1001,'08-00-00',11001,302,6);
insert into course (title,no, school_id,class_hour, teacher_id, class_room, year) 
	values	('English for class 6',6002,1001,'09-00-00',11003,302,6);
insert into course (title,no, school_id,class_hour, teacher_id, class_room, year) 
	values	('Math for class 6',6003,1001,'10-00-00',11002,302,6);
insert into course (title,no, school_id,class_hour, teacher_id, class_room, year) 
	values	('Bengali for class 7',7001,1001,'09-00-00',11001,202,7);
insert into course (title,no, school_id,class_hour, teacher_id, class_room, year) 
	values	('English for class 7',7002,1001,'10-00-00',11003,202,7);
insert into course (title,no, school_id,class_hour, teacher_id, class_room, year) 
	values	('Math for class 7',7003,1001,'08-00-00',11002,202,7);
insert into course (title,no, school_id,class_hour, teacher_id, class_room, year) 
	values	('Bengali for class 8',8001,1001,'10-00-00',11001,304,8);
insert into course (title,no, school_id,class_hour, teacher_id, class_room, year) 
	values	('English for class 8',8002,1001,'08-00-00',11003,304,8);
insert into course (title,no, school_id,class_hour, teacher_id, class_room, year) 
	values	('Math for class 8',8003,1001,'09-00-00',11002,304,8);

insert into course (title, no, school_id,class_hour, teacher_id, class_room, year) 
	values	('Bengali for class 6',6001,1002,'08-00-00',12001,101,6);
insert into course (title,no, school_id,class_hour, teacher_id, class_room, year) 
	values	('English for class 6',6002,1002,'09-00-00',12003,101,6);
insert into course (title,no, school_id,class_hour, teacher_id, class_room, year) 
	values	('Math for class 6',6003,1002,'10-00-00',12002,101,6);
insert into course (title,no, school_id,class_hour, teacher_id, class_room, year) 
	values	('Bengali for class 7',7001,1002,'09-00-00',12001,102,7);
insert into course (title,no, school_id,class_hour, teacher_id, class_room, year) 
	values	('English for class 7',7002,1002,'10-00-00',12003,102,7);
insert into course (title,no, school_id,class_hour, teacher_id, class_room, year) 
	values	('Math for class 7',7003,1002,'08-00-00',12002,102,7);
insert into course (title,no, school_id,class_hour, teacher_id, class_room, year) 
	values	('Bengali for class 8',8001,1002,'10-00-00',12001,104,8);
insert into course (title,no, school_id,class_hour, teacher_id, class_room, year) 
	values	('English for class 8',8002,1002,'08-00-00',12003,104,8);
insert into course (title,no, school_id,class_hour, teacher_id, class_room, year) 
	values	('Math for class 8',8003,1002,'09-00-00',12002,104,8);

insert into course (title,no, school_id,class_hour, teacher_id, class_room, year) 
	values	('Bengali for class 6',6001,1003,'08-00-00',13001,203,6);
insert into course (title,no, school_id,class_hour, teacher_id, class_room, year) 
	values	('English for class 6',6002,1003,'09-00-00',13002,203,6);
insert into course (title,no, school_id,class_hour, teacher_id, class_room, year) 
	values	('Math for class 6',6003,1003,'10-00-00',13003,203,6);
insert into course (title,no, school_id,class_hour, teacher_id, class_room, year) 
	values	('Bengali for class 7',7001,1003,'09-00-00',13001,202,7);
insert into course (title,no, school_id,class_hour, teacher_id, class_room, year) 
	values	('English for class 7',7002,1003,'10-00-00',13002,202,7);
insert into course (title,no, school_id,class_hour, teacher_id, class_room, year) 
	values	('Math for class 7',7003,1003,'08-00-00',13003,202,7);
insert into course (title,no, school_id,class_hour, teacher_id, class_room, year) 
	values	('Bengali for class 8',8001,1003,'10-00-00',13001,204,8);
insert into course (title,no, school_id,class_hour, teacher_id, class_room, year) 
	values	('English for class 8',8002,1003,'08-00-00',13002,204,8);
insert into course (title,no, school_id,class_hour, teacher_id, class_room, year) 
	values	('Math for class 8',8003,1003,'09-00-00',13003,204,8);

insert into student(name,roll,contact_no,gender,address,school_id,email,year,birthdate)
	values ('tina',1,'01523469782','Female','Barisal',1003,'tina@gmail.com',6,
	Date '2006-04-16');
insert into student(name,roll,contact_no,gender,address,school_id,email,year,birthdate)
	values ('mina',1,'01420234962','Female','Barisal',1003,'mina@gmail.com',7,
	Date '2005-09-21');
insert into student(name,roll,contact_no,gender,address,school_id,email,year,birthdate)
	values ('nina',1,'01861349123','Female','Barisal',1003,'nina@gmail.com',8,
	Date '2004-12-18');
insert into student(name,roll,contact_no,gender,address,school_id,email,year,birthdate)
	values ('Fatima',2,'0152145622','Female','Barisal',1003,'Fatima@gmail.com',
	6,Date '2006-04-14');
insert into student(name,roll,contact_no,gender,address,school_id,email,year,birthdate)
	values ('Farzana',2,'01523410920','Female','Barisal',1003,'Farzana@gmail.com',
	7,Date '2005-09-16');
insert into student(name,roll,contact_no,gender,address,school_id,email,year,birthdate)
	values ('Gina',2,'01523042395','Female','Barisal',1003,'Gina@gmail.com',8,
	Date '2004-09-16');
insert into student(name,roll,contact_no,gender,address,school_id,email,year,birthdate)
	values ('Riya',3,'01821345392','Female','Barisal',1003,'Riya@gmail.com',6,
	Date '2006-07-14');
insert into student(name,roll,contact_no,gender,address,school_id,email,year,birthdate)
	values ('tina',3,'01541239212','Female','Barisal',1003,'tina@gmail.com',7,
	Date '2005-09-14');
insert into student(name,roll,contact_no,gender,address,school_id,email,year,birthdate)
	values ('Bina',3,'01512395621','Female','Barisal',1003,'Bina@gmail.com',8,
	Date '2005-09-14');



insert into student(name,roll,contact_no,gender,address,school_id,email,year,birthdate)
	values ('Jonny',1,'01862431921','Male','Dhaka',1001,'Jonny@gmail.com',6,
	Date '2006-05-19');
insert into student(name,roll,contact_no,gender,address,school_id,email,year,birthdate)
	values ('Jasika',1,'01514236501','Female','Dhaka',1001,'Jasika@gmail.com',7,
	Date '2005-03-16');
insert into student(name,roll,contact_no,gender,address,school_id,email,year,birthdate)
	values ('Rose',1,'01578945123','Female','Dhaka',1001,'Rose@gmail.com',8,
	Date '2004-04-16');
insert into student(name,roll,contact_no,gender,address,school_id,email,year,birthdate)
	values ('Robin',2,'01541235069','Male','Dhaka',1001,'Robin@gmail.com',6,
Date '2004-05-20');
insert into student(name,roll,contact_no,gender,address,school_id,email,year,birthdate)
	values ('Ratul',2,'01541235691','Male','Dhaka',1001,'Ratul@gmail.com',7,
	Date '2004-09-09');
insert into student(name,roll,contact_no,gender,address,school_id,email,year,birthdate)
	values ('Amin',2,'01512304562','Male','Dhaka',1001,'Amin@gmail.com',8,
	Date '2004-08-02');
insert into student(name,roll,contact_no,gender,address,school_id,email,year,birthdate)
	values ('Amina',3,'01512304569','Female','Dhaka',1001,'Amina@gmail.com',6,
	Date '2004-03-09');
insert into student(name,roll,contact_no,gender,address,school_id,email,year,birthdate)
	values ('Khalek',3,'01512304560','Male','Dhaka',1001,'Khalek@gmail.com',7,
	Date '2004-02-17');
insert into student(name,roll,contact_no,gender,address,school_id,email,year,birthdate)
	values ('Rahman',3,'01523103691','Male','Dhaka',1001,'Rahman@gmail.com',8,
	Date '2004-03-19');


insert into student(name,roll,contact_no,gender,address,school_id,email,year,birthdate)
	values ('Gina',1,'01512347532','Female','Khulna',1002,'Gina06@gmail.com',6,
	Date '2006-05-10');
insert into student(name,roll,contact_no,gender,address,school_id,email,year,birthdate)
	values ('Jasika',1,'01512034956','Female','Khulna',1002,'Jasika@gmail.com',7,
	Date '2005-03-12');
insert into student(name,roll,contact_no,gender,address,school_id,email,year,birthdate)
	values ('Rohit',1,'01842301650','Male','Khulna',1002,'Rohit@gmail.com',8,
	Date '2004-04-30');
insert into student(name,roll,contact_no,gender,address,school_id,email,year,birthdate)
	values ('Ron',2,'01502301002','Male','Khulna',1002,'Ron@gmail.com',6,
	Date '2004-05-25');
insert into student(name,roll,contact_no,gender,address,school_id,email,year,birthdate)
	values ('Rabby',2,'01623045210','Male','Khulna',1002,'Rabby@gmail.com',7,
	Date '2004-09-01');
insert into student(name,roll,contact_no,gender,address,school_id,email,year,birthdate)
	values ('Arefin',2,'01952130123','Male','Khulna',1002,'Arefin@gmail.com',8,
	Date '2004-08-12');
insert into student(name,roll,contact_no,gender,address,school_id,email,year,birthdate)
	values ('Sumon',3,'01945213067','Male','Khulna',1002,'Sumon@gmail.com',6,
	Date '2004-03-19');
insert into student(name,roll,contact_no,gender,address,school_id,email,year,birthdate)
	values ('Keya',3,'01882102300','Female','Khulna',1002,'Keya@gmail.com',7,
	Date '2004-02-15');
insert into student(name,roll,contact_no,gender,address,school_id,email,year,birthdate)
	values ('Jui',3,'01523104512','Female','Khulna',1002,'Jui@gmail.com',8,
	Date '2004-03-19');


commit;