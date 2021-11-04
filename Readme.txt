There are all querys mandatories in order to use this project

CREATE DATABASE mainProject

USE mainProject

CREATE TABLE restaurants(

	restaurantID int,
	restaurantName NVARCHAR(40),
	restaurantAddress NVARCHAR(80),
	restaurantPhone NVARCHAR(10),
	restaurantType NVARCHAR(20),
	restaurantPrice int,
	active BIT,

)

--ADD
CREATE PROCEDURE addRestaurant
@restaurantID int,
@restaurantName nvarchar(40),
@restaurantAddress nvarchar(80),
@restaurantPhone nvarchar(10),
@restaurantType nvarchar(20),
@restaurantPrice int,
@active bit
AS
INSERT INTO restaurants(restaurantID,restaurantName,restaurantAddress,restaurantPhone,restaurantType,restaurantPrice,active)VALUES(@restaurantID,@restaurantName,@restaurantAddress,@restaurantPhone,@restaurantType,@restaurantPrice,@active)

--DEACTIVATE
CREATE PROCEDURE deleteRestaurant
@restaurantID int
AS
UPDATE restaurants SET active=0 WHERE restaurantID = @restaurantID

--UPDATE
CREATE PROCEDURE updateRestaurant
@restaurantID int,
@restaurantName nvarchar(40),
@restaurantAddress nvarchar(80),
@restaurantPhone nvarchar(10),
@restaurantType nvarchar(20),
@restaurantPrice int,
@active bit
AS
UPDATE restaurants SET restaurantName=@restaurantName,restaurantAddress=@restaurantAddress,restaurantPhone=@restaurantPhone,restaurantType=@restaurantType,restaurantPrice=@restaurantPrice,active=@active WHERE restaurantID=@restaurantID

--SHOW
CREATE PROCEDURE showRestaurant
@restaurantID int
AS
SELECT * FROM restaurants WHERE restaurantID = @restaurantID

--DELETE
CREATE PROCEDURE deleteRestaurant
@restaurantID int
AS
DELETE FROM restaurants WHERE restaurantID = @restaurantID

