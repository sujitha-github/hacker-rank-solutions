use hackerrank;

--------- CREATING TABLES AND INSERTING DATA FOR PRACTICE--------------
CREATE TABLE IF NOT EXISTS city(
	id INT,
    name VARCHAR(17),
    countrycode VARCHAR(3),
    district VARCHAR(20),
    population INT
);

INSERT INTO CITY VALUES (1, 'TAMILNADU', 'TN', 'CHENNAI', 100000),
						(2, 'KERALA', 'KL', 'KOCHI', 1000100),
                        (1, 'KARNATAKA', 'KA', 'BANGALORE', 90000);

--------- HACKER RANK SOLUTION--------------
SELECT COUNT(district) AS POPULATION_ABOVE_1LAKH FROM CITY WHERE population > 100000;