create table employee(id number,name varchar(20),job varchar(20),salary number,department varchar(20));
insert into employee(id,name,job,salary,department)values
(101,'jomon','manager',300000,'hr'),
(102,'Karthik','manager',200000,'Enginnering'),
(103,'Arun','supervisor',90000,'engineering'),
(104,'Akash','supervisor',100000,'engineering'),
(105,'Rahul','director',400000,'hr');

create or replace trigger prevent_del before delete on employee
for each row 
begin
  raise_application_error(-20001,'deletion is not allowed in this table');
end;
/

begin
delete from employee where name='jomon';
end;
/
