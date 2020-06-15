
--zad 1

Create PROCEDURE cFibonacci(@licz INT)
AS
BEGIN
	DECLARE @numbers table(number int)
	DECLARE @n1 INT = 0,@n2 INT =1,@i INT=0,@t INT
	Insert Into @numbers Values(@n1),(@n2)
  
	WHILE (@i<@licz-2)
	BEGIN 			
		Insert Into @numbers Values(@n2+@n1)
		set @t = @n2
		Set @n2 = @n2 + @n1
		Set @n1 = @t
		Set @i += 1
	END	
	Select * from @numbers
END

--zad 2 
CREATE TRIGGER trigger_dml ON Person.Person FOR UPDATE AS
UPDATE Person.Person SET lastName=UPPER(lastName)
SELECT * FROM Person.Person;

--zad 3 
CREATE TRIGGER taxRateMonitoring ON AdventureWorks2017.Sales.SalesTaxRate AFTER UPDATE 
AS
BEGIN
	DECLARE @taxrate1 FLOAT = (SELECT TaxRate FROM deleted)
	DECLARE @taxrate2 FLOAT = (SELECT TaxRate FROM inserted)
	DECLARE @uw FLOAT = @taxrate1 * 0.3
	IF (@taxrate1 > (@taxrate2 + @uw)) OR (@taxrate2 < (@taxrate1 - @uw))
		BEGIN
		PRINT 'Uwaga blad!'
		ROLLBACK;
	END
END







