create or replace function maxnum(n1 number ,n2 number) return number as maxnum number;
begin
  if n1>=n2 then
    maxnum:=n1;
    return maxnum;
  else
    maxnum:=n2;
    return maxnum;
  end if;
end;
/

declare 
  n1 number:=&n1;
  n2 number:=&n2;
  maxn number;
begin
  maxn:=maxnum(n1,n2);
  dbms_output.put_line(maxn||' is the largest');
end;
/
