create table instructor(ins_id number primary key, ins_name varchar(100),dep_name varchar(100));
insert into instructor(ins_id,ins_name,dep_name) values
(10,'jomon','maths'),
(11,'rahul','commerce'),
(12,'adwaith','maths'),
(13,'bavin','commerce'),
(14,'thanzir','maths');

create or replace procedure ins_count(dep varchar) as pcount number;
begin
  select count(*) into pcount from instructor where dep_name=dep;
  dbms_output.put_line(dep||' count = '||pcount);
  exception
    when no_data_found then
      dbms_output.put_line('no instructor found for department '||dep);
    when others then
        dbms_output.put_line('Error '||sqlerrm);
end;  
/

declare
  dep varchar(100):='maths';
begin
  ins_count(dep);
end;
/
