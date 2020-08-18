DROP TABLE Park
DROP Table Driver
DROP TABLE Port
DROP TABLE Car
DROP TABLE Station
CREATE TABLE Station 
(
stnId			VARCHAR(20) NOT NULL,
location		CHAR(70),
numberOfPorts	NUMERIC(10),
paymentMode		CHAR(15),
CONSTRAINT pk_Station_stnId PRIMARY KEY (stnId)
);

CREATE TABLE Car
(
cId				VARCHAR(20) NOT NULL,
CONSTRAINT pk_Car_cId PRIMARY KEY (cId)
);


CREATE TABLE Port
(
pId				VARCHAR(20) NOT NULL,
entry_date		DATE,
inTime			TIME NOT NULL,
outTime			TIME,
totalHours		NUMERIC(10),
hourlyRate		NUMERIC(10),
payment			NUMERIC(10),
stnId			VARCHAR(20) NOT NULL,
cId				VARCHAR(20) NOT NULL
	CONSTRAINT pk_Port_pId PRIMARY KEY (pId, inTime),
	
	CONSTRAINT fk_Port_stnId FOREIGN KEY (stnId)
	 REFERENCES Station(stnId) ON DELETE NO ACTION ON UPDATE CASCADE,
	CONSTRAINT fk_Port_cId FOREIGN KEY (cId)
	 REFERENCES Car(cId) ON DELETE NO ACTION ON UPDATE CASCADE

);

CREATE TABLE Driver 
(
dId				VARCHAR(20) NOT NULL,
driverFirstName CHAR(10),
driverLastName  CHAR(10),
cId				VARCHAR(20) NOT NULL
CONSTRAINT pk_Driver_dId PRIMARY KEY (dId),
CONSTRAINT fk_Driver_cId FOREIGN KEY (cId)
	 REFERENCES Car(cId) ON DELETE NO ACTION ON UPDATE CASCADE

);

CREATE TABLE [Park]
(
stnId VARCHAR(20) NOT NULL,
pId VARCHAR(20) NOT NULL,
inTime Time(7) NOT NULL,
entry_date		DATE,
cId VARCHAR(20) NOT NULL,

CONSTRAINT pk_Park_stnId_pId_cId PRIMARY KEY (stnId, pId, cId, inTime, entry_date),

CONSTRAINT fk_Park_stnId FOREIGN KEY (stnId)
		REFERENCES [Station] (stnId)
		ON DELETE NO ACTION ON UPDATE CASCADE,

CONSTRAINT fk_Park_pId FOREIGN KEY (pId, inTime, entry_date) REFERENCES [PORT](pId, inTime, entry_date)
		ON DELETE NO ACTION ON UPDATE NO ACTION,

CONSTRAINT fk_Park_cId FOREIGN KEY (cId)
		REFERENCES [Car] (cId)
		ON DELETE NO ACTION ON UPDATE CASCADE,
);

