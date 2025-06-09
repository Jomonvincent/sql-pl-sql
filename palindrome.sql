create or replace function palindrome(str varchar)return boolean as rev varchar(100);
begin 
  
  for i in reverse 1..length(str) 
  loop
    rev:=rev||substr(str,i,1);
  end loop;
  return rev=str;
end;
/

declare
  str varchar(100):=&str;
  result boolean;
begin
  result:=palindrome(str);
  if result 
  then
    dbms_output.put_line(str ||' is a palindrome');
  else
    dbms_output.put_line(str ||' is not a palindrome');
  end if;
end;
/ 
