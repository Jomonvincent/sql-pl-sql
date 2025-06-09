create table sailer(id number primary key,name varchar(20),rating number,age number);
insert into sailer(id,name,rating,age) values
(10,'jomon',5,21),
(11,'kevin',6,26),
(12,'kiran',8,28),
(13,'john',2,31),
(14,'dhamu',5,28),
(15,'hasan',7,20),
(16,'manu',3,19);
commit;

declare
  cursor c_sailer is 
           select id,rating from sailer;
  v_id sailer.id%type;
  v_rating sailer.rating%type;
begin
  open c_sailer;
  dbms_output.put_line('id  rating');
  dbms_output.put_line('-----------');
  loop
    fetch c_sailer into v_id, v_rating;
    exit when c_sailer%notfound;
    dbms_output.put_line(v_id||'  '||v_rating);
  end loop;
  close c_sailer;
end;
/
