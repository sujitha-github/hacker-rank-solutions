--  Initialize the database
use hackerrank;

----------------- Hacker Rank Solution ---------------------------------
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


----------------- Hacker Rank Solution---------------------------------
--  Create a view for temporary storage
-- Here, creating five seperate columns, based on condition as below mentioned
-- The group_number is will be used to get names in alphabetical order 
CREATE VIEW v_occupation AS	(
SELECT 
	CASE WHEN occupation = 'Doctor' THEN name END AS doctor,
    CASE WHEN occupation = 'Professor' THEN name END AS professor,
    CASE WHEN occupation = 'Actor' THEN name END AS actor,
    CASE WHEN occupation = 'Singer' THEN name END AS singer,
    ROW_NUMBER() OVER (PARTITION BY occupation ORDER BY name) as group_number
FROM occupations
);

-- How the VIEW looks
SELECT * FROM v_occupation;  -- avoid this code while pasting in hackerrank console

-- Select names in each column by grouping rownumber
SELECT MAX(doctor), MAX(professor), MAX(singer), MAX(actor) FROM v_occupation
GROUP BY group_number;







