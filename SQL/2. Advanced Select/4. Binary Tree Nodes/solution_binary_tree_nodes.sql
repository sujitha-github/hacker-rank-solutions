use hackerrank;

--------- CREATING TABLES AND INSERTING DATA FOR PRACTICE--------------
CREATE TABLE IF NOT EXISTS binary_tree (
	N INT,
    P INT
);

alter table binary_tree rename BST;

INSERT INTO binary_tree (N,P) VALUES (1,2), (3,2), (6,8), (9,8), (2,5), (8,5), (5, NULL);

SELECT * FROM binary_tree;


--------- HACKER RANK SOLUTION--------------
SELECT N, IF(P IS NULL,"Root",IF((SELECT COUNT(*) FROM bst WHERE P=B.N)>0,"Inner","Leaf")) FROM bst AS B ORDER BY N;
