-- database name is hackerrank
use hackerrank;

create table triangle(
	a int,
    b int,
    c int);

select * from triangle;
alter table triangle rename triangles;

insert into triangle (a,b,c) values (20,20,23),
                            (20,20,20),
                            (20,21,22),
                            (13,14,30);
                            
select case
when (a + b <= c) OR (b + c <= a) OR (a + c <= b) THEN 'Not A Triangle'
when (a=b) and (b=c) then 'Equilateral'
when ((a=b) & (a!=c)) or ((b=c) & (b!=a)) or ((a=c) & (a!=b)) then 'Isosceles'
when (a !=b) and (b!=c) and (a!=c) then 'Scalene'    
end as Triangle_Type
from TRIANGLES;