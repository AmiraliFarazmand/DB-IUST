--  ...
-- Customer(custId, custName, addId, phoneId) 
-- Buys(custId, orderNo) 
-- Order(orderNo, date, tax, addId, phoneId) 
-- Contains(orderNo, INo, quantity) 
-- Item(INo, Iname, price, quality)
-- Supplier(SNo, Sname, addId, phoneId) 
-- Supplies(SNo, INo, unitCost) 
-- Phone(phoneId, countryCode, number) 
-- Address(addId, country, city, street, zip)
-- ...

-- --------------------------------------------------------------------
-- الف
SELECT name , cost
FROM Item
-- --------------------------------------------------------------------
-- ب
SELECT orderNo, date
FROM Order
WHERE (tax>10)
-- --------------------------------------------------------------------
-- پ
SELECT C.orderNo,I.* 
FROM Contains C JOIN Item I ON C.INo = I.INo
GROUP BY C.orderNo;
-- --------------------------------------------------------------------
-- ت
SELECT custId,number 
FROM Custumer C,Address A,Phone P 
WHERE  C.addId = A.addId AND C.phoneId = P.phoneId AND A.city='Tehran';
-- --------------------------------------------------------------------
-- ث
SELECT * 
FROM Customer C 
INNER JOIN Buys B ON C.custid = B.custid
WHERE NOT EXISTS (
    ( SELECT i.INo FROM item as i ) 
    EXCEPT
    (SELECT sp.pid FROM supplies sp WHERE sp.sid = s.sid ) );
-- --------------------------------------------------------------------
-- ج
SELECT SNo 
FROM Supplier
WHERE SNo NOT IN (
    SELECT DISTINCT SNo
    FROM Suplies);
-- --------------------------------------------------------------------
-- چ
SELECT C.* 
FROM Customer C,Buys B,Order O,Address A
WHERE C.custid = B.custid AND B.orderNo = O.orderNo AND O.addid = A.addid
AND (A.city ='Tehran' OR  A.city = 'Yazd') AND A.city <> 'Isfahan';
-- --------------------------------------------------------------------
-- ح 
SELECT DISTINCT P_1.INo
FROM
(SELECT Con.INo, Adr.city, Ord.orderNo
FROM Contains AS Con
  JOIN Order AS Ord ON Ord.orderNo = Con.orderNo
  JOIN Address AS Adr ON Adr.addId = Ord.addId) AS P_1,

(SELECT Con_1.INo, Adr_2.city,Cus.custId , Con_1.orderNo
FROM Contains AS Con_1
    JOIN Buys AS Buy ON Buy.orderNo = Con_1.orderNo
    JOIN Customer AS Cus ON Cus.custId = Buy.custId
    JOIN Address As Adr_2 ON Cus.addId = Adr_2.addId) AS P_2,

(SELECT Sup_1.INo, Adr_3.city, Sup_2.SNo
FROM Supplies AS Sup_1
    JOIN Supplier AS Sup_2 ON Sup_2.SNo = Sup_1.SNo
    JOIN Address AS Adr_3 ON Adr_3.addId = Sup_2.addId) AS P_3

WHERE P_1.INo = P_2.INo AND P_2.INo = P_3.INo 
AND P_1.city = P_2.city AND P_3.city = P_2.city 
AND P_1.orderNo = P_2.orderNo;
-- --------------------------------------------------------------------
-- خ
SELECT *
FROM Customer
WHERE Customer.custId IN(
  SELECT C.custId
  FROM Customer AS C
  EXCEPT
  (SELECT DISTINCT B.custId
    FROM Buys AS B
        JOIN Contains AS Con ON Con.orderNO = B.orderNO
    GROUP BY B.custId, Con.INo
    HAVING (COUNT(*) > 1)));