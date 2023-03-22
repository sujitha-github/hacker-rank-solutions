create table OCCUPATIONS (
name varchar(20),
occupation varchar(20));

Insert into OCCUPATIONS (name, occupation) values ('Samantha', 'Doctor'),
('Julia', 'Actor'),
('Maria', 'Actor'),
('Meera', 'Singer'),
('Ashely', 'Professor'),
('Ketty', 'Professor'),
('Christeen', 'Professor'),
('Jane', 'Actor'),
('Jenny', 'Doctor'),
('Priya', 'Singer');

select * from occupations;

select concat(name, '(', substr(occupation,1,1), ')' ) as query1_result
from occupations
union
select concat('There are a total of ', count(occupation), ' ', Lower(occupation), 's.') as query2_result from occupations
group by occupation
order by query1_result;
