-- All details for driver whose first name is 'Micheal' and who parked in between 9 am and 14 pm
SELECT * from Driver d, Park p
WHERE p.cId = d.cId AND
d.driverFirstName = 'Michael' AND
p.[inTime] BETWEEN '9:00:00' AND '14:00:00'


--What are the names of drivers who parked in port 2 of station 1 
SELECT d.[driverFirstName], d.[driverLastName]
FROM Driver d, Port p
WHERE p.[cId] = d.[cId]  AND p.[stnId] = 01 AND  p.[pId] = 1.2


-- Name of drivers who paid more than $120 on 10/11/2018
SELECT d.driverFirstName, d.driverlastName, d.cId, p.entry_date, p.stnId, p.payment from Driver d, Port p
WHERE p.cId = d.cId AND
p.payment >120 AND p.entry_date='2018-10-11'


-- Return details of all stations that received more than $200 from its ports
Select s.*, SUM(p.payment) as totalPaymentReceived
FROM Station as s, Port as p
Where s.stnId = p.stnId
Group BY  s.stnId,s.location, s.numberOfPorts, s.paymentMode
HAVING SUM(p.payment)> 200
