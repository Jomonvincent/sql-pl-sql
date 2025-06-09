create table student(roll_no number,name varchar(100));

create or replace procedure insert_student(roll number,sname varchar) as 
begin
  insert into student(roll_no,name) values(roll,sname);
  commit;
  dbms_output.put_line('inserted successfully');
  dbms_output.put_line('roll no : '||roll||'  name : '||sname);
end;
/

declare
  roll number:=&roll;
  name varchar(100):=&name;
begin
  insert_student(roll,name);
end;
/
