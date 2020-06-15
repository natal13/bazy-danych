


--zad 2 
CREATE TRIGGER trigger_dml ON Person.Person FOR UPDATE AS
UPDATE Person.Person SET lastName=UPPER(lastName)
SELECT * FROM Person.Person;









