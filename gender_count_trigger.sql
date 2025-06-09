create table student (id number ,name varchar(15),gender varchar(10));
create table gender_count(boys number,girls number);

insert into gender_count values(0,0);

create or replace trigger trigen_count before insert on student
for each row
begin
  if lower(:new.gender)='male' then
    update gender_count set boys=boys+1;
  else
    update gender_count set girls=girls+1;
  end if;
end;
/

INSERT INTO student VALUES (1, 'Jomon', 'Male');
INSERT INTO student VALUES (2, 'Jeevan', 'Male');
INSERT INTO student VALUES (3, 'Anjali', 'Female');
INSERT INTO student VALUES (4, 'Arjun', 'Male');
INSERT INTO student VALUES (5, 'Rahul', 'Male');
INSERT INTO student VALUES (6, 'Sneha', 'Female');
INSERT INTO student VALUES (7, 'Divya', 'Female');



SELECT * FROM gender_count;


