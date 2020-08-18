Select * from Port where pId like '8'
Select * from Park where stnId = 8
Select * from Station
Select * from Car
Select * from Driver
Select * from Drive

SELECT * from Driver d, Park p
WHERE p.cId = d.cId AND
d.driverFirstName = 'Michael' AND
p.[inTime] BETWEEN '9:00:00' AND '14:00:00'


SELECT d.[driverFirstName], d.[driverLastName]
FROM Driver d, Port p
WHERE p.[cId] = d.[cId]  AND p.[stnId] = 01 AND  p.[pId] = 1.2

SELECT d.driverFirstName, d.driverlastName, d.cId, p.entry_date, p.stnId, p.payment from Driver d, Port p
WHERE p.cId = d.cId AND
p.payment >120 AND p.entry_date='2018-10-11'

Select s.*, SUM(p.payment) as totalPaymentReceived
FROM Station as s, Port as p, Park as pa
Where s.stnId = pa.stnId and pa.pId = p.pId
Group BY  s.stnId,s.location, s.numberOfPorts, s.paymentMode
HAVING SUM(p.payment)> 200

Select s.*, SUM(p.payment) as totalPaymentReceived
FROM Station as s, Port as p, Park as pa
Where pa.entry_date = p.entry_date and pa.pId = p.pId and p.inTime = pa.inTime and s.stnId = pa.stnId
Group BY  s.stnId,s.location, s.numberOfPorts, s.paymentMode
HAVING SUM(p.payment)> 10

SELECT d.[driverFirstName], d.[driverLastName]
FROM Driver d, Park p
  WHERE p.[cId] = d.[cId]  AND p.[stnId] = 01 AND  p.[pId] = 1.2


  SELECT d.driverFirstName, d.driverlastName, d.cId, p.entry_date, p.stnId, p.payment from Driver d, Port p
WHERE p.cId = d.cId AND
p.payment >120 AND p.entry_date='2018-10-11'


SELECT * from Driver d, Park p
WHERE p.cId = d.cId AND
d.driverFirstName = 'Michael' AND
p.[inTime] BETWEEN '9:00:00' AND '22:00:00'

Select  pa.stnId,  s.location, pa.pId, pa.cId, po.totalHours
From Park as pa, Port as po, Station as s
Where pa.entry_date = po.entry_date and pa.inTime = po.inTime and pa.pId = po.pId and pa.stnId = s.stnId

Insert into Park values('01',1.1,'9:00','2019-08-29','LPL942')
Insert into Park values('01',1.1,'14:00','2018-10-12','BRV002')
Insert into Park values('01',1.2,'16:00','2019-08-19','HCT868')
Insert into Park values('01',1.3,'9:00','2018-11-03','CHL481')
Insert into Park values('01',1.4,'16:00','2019-04-17','EDP979')
Insert into Park values('01',1.6,'11:00','2018-10-27','UZP282')
Insert into Park values('10',10.5,'11:00','2018-10-12','XEL413')
Insert into Park values('10',10.6,'12:00','2019-09-01','UKX870')
Insert into Park values('11',11.2,'10:00','2019-10-01','PCS134')
Insert into Park values('11',11.4,'11:00','2019-09-01','MZZ537')
--Insert into Park values('11',11.5,'9:00','','VHI014')
Insert into Park values('11',11.6,'11:00','2019-09-01','QOC605')
Insert into Park values('12',12.1,'10:00','2018-06-11','YIN813')
Insert into Park values('12',12.6,'15:00','2019-01-12','UYZ747')
Insert into Park values('12',12.6,'17:00','2018-06-11','VJC918')
Insert into Park values('13',13.2,'10:00','2019-02-12','NUL419')
Insert into Park values('13',13.6,'10:00','2019-10-12','SWO102')
Insert into Park values('14',14.4,'12:00','2019-10-02','NRQ813')
Insert into Park values('14',14.6,'17:00','2019-11-01','SGB022')
Insert into Park values('15',15.4,'9:00','2019-10-02','NED139')
Insert into Park values('15',15.6,'9:00','2019-10-02','RRO654')
Insert into Park values('16',16.1,'10:00','2019-04-02','TXQ253')
Insert into Park values('16',16.6,'9:00','2018-10-11','ZJK877')
Insert into Park values('17',17.5,'10:00','2018-12-11','WTM203')
Insert into Park values('17',17.6,'10:00','2019-03-02','ZTM512')
Insert into Park values('09', 9.1,'11:30','2019-10-12','EVQ201')
Insert into Park values('08', 8.7,'15:00','2019-03-04','DXQ330')
Insert into Park values('08',8.2,'09:00','2019-08-12','QVK816')
Insert into Park values('07', 7.6,'11:00','2019-03-02','IBO350')
Insert into Park values('07', 7.6,'10:00','2019-07-22','DYL761')
Insert into Park values('07', 7.3,'12:00','2018-08-11','MJS830')
Insert into Park values('07', 7.2,'12:00','2019-01-12','FNQ044')
Insert into Park values('06', 6.3,'10:30','2018-05-12','GGW172')
Insert into Park values('05',5.5,'09:00','2018-10-31','VHI014')
Insert into Park values('05', 5.3,'12:00','2018-03-16','ENE137')
Insert into Park values('04', 4.6,'09:00','2019-10-24','QVK816')
Insert into Park values('04', 4.1,'13:30','2019-06-07','GDQ343')
Insert into Park values('03', 3.5,'13:00','2019-02-24','CNH963')
Insert into Park values('03', 3.3,'14:00','2019-07-23','JHY942')
Insert into Park values('03', 3.2,'11:30','2019-10-01','FRE183')
Insert into Park values('02',2.7,'10:30','2019-09-28','EDY278')
Insert into Park values('17', 17.5,'10:00','2018-12-11','ZTM512')
Insert into Park values('17', 17.6,'10:00','2019-03-02','QMO559')
Insert into Park values('17',17.7,'10:00','2019-02-02','OBV558')
Insert into Park values('02', 2.1,'10:00','2019-08-19','GNQ765')
Insert into Park values('02', 2.1,'13:00','2018-12-12','BZP955')
Insert into Park values('02', 2.1,'16:00','2018-05-12','MEI991')
Insert into Park values('02', 2.1,'18:00','2019-03-13','DLU559')
Insert into Park values('02', 2.2,'10:00','2019-05-31','LXV303')
Insert into Park values('02', 2.6,'09:00','2019-10-25','QVK816')
