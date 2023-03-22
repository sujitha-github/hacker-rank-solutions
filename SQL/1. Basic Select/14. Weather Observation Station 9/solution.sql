SELECT DISTINCT CITY 
FROM STATION 
WHERE CITY not LIKE 'A%' 
	and CITY not LIKE 'E%' 
	and CITY not LIKE 'I%' 
	and CITY not LIKE 'O%' 
	and CITY not LIKE 'U%';