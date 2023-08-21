-- find all +55 years old proffesors
-- consider following as proffessor class:
--  ------------------------------------------------
-- |ID  |SSN    |age    |degree     |phone_number   |
--  ------------------------------------------------

SELECT ID 
FROM Proffesors 
WHERE age > 55;