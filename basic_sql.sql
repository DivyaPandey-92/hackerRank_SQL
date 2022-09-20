
--MySQL
select if(A+B<=C OR B+C<=A OR C+A<=B, 'Not A Triangle', if(A=B AND B=C , 'Equilateral',
 if(A=B or B=C or A=C, 'Isosceles', 'Scalene') )) FROM TRIANGLES

 --SQL Server
 SELECT
    IIF(A+B<=C OR A+C<=B OR B+C<=A, 'Not A Triangle',
    IIF(A=B AND A=C, 'Equilateral',
    IIF(A=B OR A=C OR B=C, 'Isosceles', 'Scalene')))
FROM Triangles

--SQL server using case
SELECT 
CASE
WHEN  A+B<=C or B+C<=A or A+C<=B THEN 'Not A Triangle'
WHEN A=B and B=C THEN 'Equilateral'
WHEN A=B or B=C or C=A THEN 'Isosceles'
ELSE 'Scalene'
END
FROM TRIANGLES;


/*
Enter your query here.
Please append a semicolon ";" at the end of the query and enter your query in a single line to avoid error.
*/
SELECT
    IIF(A+B<=C OR A+C<=B OR B+C<=A, 'Not A Triangle',
    IIF(A=B AND A=C, 'Equilateral',
    IIF(A=B OR A=C OR B=C, 'Isosceles', 'Scalene')))
FROM Triangles

SELECT 
CASE
WHEN  A+B>=C or B+C>=A or A+C>=B THEN
    CASE
        WHEN A=B and B=C THEN 'Equilateral'
        WHEN A=B or B=C or C=A THEN 'Isosceles'
        ELSE 'Scalene'
        END
ELSE 'Not A Triangle'
END
FROM TRIANGLES;

SELECT 
CASE
WHEN  A+B<=C or B+C<=A or A+C<=B THEN 'Not A Triangle'
WHEN A=B and B=C THEN 'Equilateral'
WHEN A=B or B=C or C=A THEN 'Isosceles'
ELSE 'Scalene'
END
FROM TRIANGLES;

