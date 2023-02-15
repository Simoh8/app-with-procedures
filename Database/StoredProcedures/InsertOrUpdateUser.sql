
USE Major ;
GO

CREATE PROCEDURE ChangeorInsert (@Id VARCHAR(100),@Name VARCHAR(255) = NULL,@Email VARCHAR(255) = NULL,@Username VARCHAR(50)= NULL,@Password VARCHAR(255) = NULL,@Address VARCHAR(255) = NULL
)
AS
BEGIN

IF EXISTS (SELECT * FROM  USERS WHERE id=@Id)

BEGIN
UPDATE USERS SET id=@Id, name=@Name, email=@Email, username=@Username, password=@Password, address=@Address
WHERE id=@Id

 END

 ELSE
 
 BEGIN 

 INSERT INTO USERS (id, name, email, username, password, address)  

 VALUES (@Id, @Name, @Email, @Username, @Password, @Address);
END
END

SELECT * FROM USERS



EXEC ChangeorInsert @Id="6eewsdw", @Name="smuturi", @Email="simomutu7@gmaiul.com", @Username="altilksnd", @Password="435rde456yuht7", @Address="Nyreri"
