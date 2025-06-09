create table employee(id number,name varchar(20),job varchar(20),salary number,department varchar(20));
insert into employee(id,name,job,salary,department)values
(101,'jomon','manager',300000,'hr'),
(102,'Karthik','manager',200000,'Enginnering'),
(103,'Arun','supervisor',90000,'engineering'),
(104,'Akash','supervisor',100000,'engineering'),
(105,'Rahul','director',400000,'hr');

declare 
  cursor c_emp is
          select name,salary,job from employee;
  e_name employee.name%type;
  e_salary employee.salary%type;
  e_job employee.job%type;

begin
  open c_emp;
    dbms_output.put_line(rpad('name',15)||rpad('salary',15)||rpad('job',15));
    loop
      fetch c_emp into e_name,e_salary,e_job;
      exit when c_emp%notfound;
      dbms_output.put_line(rpad(e_name,15) ||rpad(e_salary,15)||rpad(e_job,15));
    end loop;
  close c_emp;
end;
/
