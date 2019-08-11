---------------- TEST TABLE TO EXAMPLE ----------------
CREATE TABLE Employee(
	ID INT CONSTRAINT PK_Employee PRIMARY KEY IDENTITY,
	Name VARCHAR(50),
	Age INT,
	Salary MONEY,
	Extra_Time NUMERIC(10,2)
)
GO


BULK INSERT Employee
FROM 'file path'
WITH
(
	KEEPNULLS,
	FIRSTROW = 3,
	DATAFILETYPE = 'widechar',
	FIELDTERMINATOR = '\t', /* \t = TAB */
	ROWTERMINATOR = '\n'	/* \n = ENTER*/

)
GO 

SELECT * FROM Employee
go
