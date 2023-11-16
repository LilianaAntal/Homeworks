/*1. AVG = this function returns the average of the values in a group. It ignores null values.*/
SELECT AVG(DISTINCT ListPrice) as [Average Price]
FROM Production.Product; 
GO

/*2. COUNT = this function returns the number of items found in a group.*/
SELECT COUNT(DISTINCT Name) as [Distinct Product]  -- returns the number of unique, nonnull values
FROM Production.Product;
GO

/*3. MAX = Returns the maximum value in the expression.*/
SELECT MAX(ListPrice) as [MAX Price] 
FROM Production.Product;  
GO  

/*4. MIN = returns the minimum value in the expression.*/
SELECT  MIN(ListPrice) as [MIN Price] 
FROM Production.Product;    
GO  

/*5. SUM = returns the sum of all the values, or only the DISTINCT values, in the expression. 
SUM can be used with numeric columns only. Null values are ignored.*/
SELECT Color, SUM(ListPrice), SUM(StandardCost)  
FROM Production.Product  
WHERE Color IS NOT NULL   
    AND ListPrice != 0.00   
    AND Name LIKE 'Mountain%'  
GROUP BY Color  
ORDER BY Color;  
GO  

/*6. DATEDIFF = this function returns the count (as a signed integer value) of the specified datepart 
boundaries crossed between the specified startdate and enddate.*/
select DATEDIFF(WEEK,'1985-11-19',getdate());
GO

/*7. DATENAME = this function returns a character string representing the specified datepart of the specified date.*/
SELECT DATENAME(month,'1985-11-19');
GO

/*8. DATEPART = this function returns an integer representing the specified datepart of the specified date.*/
select DATEPART(weekday,'1985-11-19');   -- 3 (Wednesday)
GO

/*9. EOMONTH = this function returns the last day of the month containing a specified date, with an optional offset.*/
DECLARE @date DATETIME = GETDATE();
SELECT EOMONTH ( @date ) AS 'This Month';
SELECT EOMONTH ( @date, 1 ) AS 'Next Month';
SELECT EOMONTH ( @date, -1 ) AS 'Last Month';
GO

/*10. CEILING = this function returns the smallest integer greater than, or equal to, the specified numeric expression.*/
SELECT CEILING($123.45), CEILING($-123.45), CEILING($0.0);  
GO

/*11. ROUND = returns a numeric value, rounded to the specified length or precision. ROUND always returns a value. 
If length is negative and larger than the number of digits before the decimal point, ROUND returns 0.*/
SELECT ROUND(150.75, 0);  
GO  
SELECT ROUND(150.75, 0, 1);  
GO  

/*12. IIF = returns one of two values, depending on whether the Boolean expression evaluates to true or false in SQL Server.*/
DECLARE @a INT = 45, @b INT = 40;
SELECT [Result] = IIF( @a > @b, 'TRUE', 'FALSE' );
GO

/*13. CONCAT = this function returns a string resulting from the concatenation, or joining, of two or more string values in an end-to-end manner.*/
SELECT CONCAT ('Happy ', 'Birthday ', 11, '/', '19') AS Result;
GO

/*14. LEFT = Returns the left part of a character string with the specified number of characters.*/
SELECT LEFT('abcdefg',2);   --ab
GO

/*15. LEN = Returns the number of characters of the specified string expression, excluding trailing spaces.*/
SELECT TOP 10 LEN([FirstName]) AS LENGTH, FirstName 
FROM [Person].[Person]
ORDER BY LEN([FirstName]) DESC
GO

/*16. REPLACE = Replaces all occurrences of a specified string value with another string value.*/
SELECT REPLACE('abcdefghicde','cde','xxx');  -- abxxxfghixxx
GO

/*17. RIGHT = Returns the right part of a character string with the specified number of characters.*/
SELECT RIGHT('abcdefg',2);  --fg
GO

/*18. RTRIM = Removes space character char(32) or other specified characters from the end of a string.*/
SELECT RTRIM('Removes trailing spaces.   ');
GO

/*19. SUBSTRING = Returns part of a character, binary, text, or image expression in SQL Server.  SUBSTRING ( expression, start, length )*/
SELECT x = SUBSTRING('abcdef', 2, 3);   --bcd
GO

/*20. TRIM = Removes the space character char(32) or other specified characters from the start and end of a string. 
The following example provides a list of possible characters to remove from a string:*/
SELECT TRIM( '.,! ' FROM '     #     test    .') AS Result;
GO
