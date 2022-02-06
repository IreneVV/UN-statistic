CREATE   PROCEDURE Book.Person_InsertBulk
 
@json NVARCHAR(max)
 
AS
BEGIN
 
INSERT INTO Book.Person (
  [FirstName]
, [MiddleName]
, [LastName])
 
    SELECT
        FirstName
       ,MiddleName
       ,LastName
    FROM OPENJSON(@json)
    WITH (
      FirstName  nvarchar(25)
     ,MiddleName nvarchar(25)
     ,LastName   nvarchar(25)
    ) AS jsonValues
 
END
