
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









