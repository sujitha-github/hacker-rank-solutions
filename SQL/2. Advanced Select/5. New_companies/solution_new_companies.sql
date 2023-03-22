use hackerrank;

--------- CREATING TABLES AND INSERTING DATA FOR PRACTICE--------------
CREATE TABLE IF NOT EXISTS company(
	company_code VARCHAR(20),
    founder VARCHAR(20)
);

CREATE TABLE IF NOT EXISTS lead_manager(
	lead_manager_code VARCHAR(20),
    company_code VARCHAR(20)
);

CREATE TABLE IF NOT EXISTS Senior_Manager(
	senior_manager_code VARCHAR(20),
    lead_manager_code VARCHAR(20),
    company_code VARCHAR(20)
);

CREATE TABLE IF NOT EXISTS Manager(
	manager_code VARCHAR(20),
    senior_manager_code VARCHAR(20),
    lead_manager_code VARCHAR(20),
    company_code VARCHAR(20)
);

CREATE TABLE IF NOT EXISTS Employee(
	employee_code VARCHAR(20),
    manager_code VARCHAR(20),
    senior_manager_code VARCHAR(20),
    lead_manager_code VARCHAR(20),
    company_code VARCHAR(20)
);


INSERT INTO company VALUES ('C1', 'Monika'),('C2', 'Samantha');
INSERT INTO lead_manager VALUES ('LM1', 'C1'),('LM2', 'C2');
INSERT INTO Senior_Manager VALUES ('SM1', 'LM1', 'C1'),('SM2','LM1','C1'),('SM3','LM2','C2');
INSERT INTO Manager VALUES ('M1', 'SM1', 'LM1', 'C1'),('M2', 'SM3', 'LM2', 'C2'),('M3', 'SM3', 'LM2', 'C2');
INSERT INTO Employee VALUES ('E1', 'M1', 'SM1', 'LM1', 'C1'), 
							('E2', 'M1', 'SM1', 'LM1', 'C1'),
                            ('E3', 'M2', 'SM3', 'LM2', 'C2'), 
                            ('E4', 'M2', 'SM3', 'LM2', 'C2');
						
SELECT * FROM Employee;


--------- HACKER RANK SOLUTION--------------
SELECT company_code, founder, 
(SELECT count(DISTINCT lead_manager_code) FROM lead_manager WHERE company_code = c.company_code) AS Lead_Managers,
(SELECT count(DISTINCT senior_manager_code) FROM Senior_Manager WHERE company_code = c.company_code) AS Senior_Manager,
(SELECT count(DISTINCT manager_code) FROM Manager WHERE company_code = c.company_code) AS Manager,
(SELECT count(DISTINCT employee_code) FROM Employee WHERE company_code = c.company_code) AS Employee
FROM company AS c
ORDER BY company_code;