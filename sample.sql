DROP TABLE IF EXISTS SAMPLEDATA;		
CREATE TABLE SAMPLEDATA (		
  Date DATE,		
  Location TEXT,		
  Metric INT,		
  PRIMARY KEY (Date,Location)		
);		
INSERT INTO SAMPLEDATA VALUES('2020-01-22','Location 1',7);	INSERT INTO SAMPLEDATA VALUES('2020-01-22','Location 2',2);	INSERT INTO SAMPLEDATA VALUES('2020-01-22','Location 3',10);
INSERT INTO SAMPLEDATA VALUES('2020-01-23','Location 1',6);		INSERT INTO SAMPLEDATA VALUES('2020-01-23','Location 3',4);
INSERT INTO SAMPLEDATA VALUES('2020-01-24','Location 1',9);	INSERT INTO SAMPLEDATA VALUES('2020-01-24','Location 2',1);	INSERT INTO SAMPLEDATA VALUES('2020-01-24','Location 3',9);
INSERT INTO SAMPLEDATA VALUES('2020-01-25','Location 1',10);	INSERT INTO SAMPLEDATA VALUES('2020-01-25','Location 2',0);	INSERT INTO SAMPLEDATA VALUES('2020-01-25','Location 3',0);
INSERT INTO SAMPLEDATA VALUES('2020-01-26','Location 1',6);	INSERT INTO SAMPLEDATA VALUES('2020-01-26','Location 2',0);	
	INSERT INTO SAMPLEDATA VALUES('2020-01-27','Location 2',7);	INSERT INTO SAMPLEDATA VALUES('2020-01-27','Location 3',6);
INSERT INTO SAMPLEDATA VALUES('2020-01-28','Location 1',8);	INSERT INTO SAMPLEDATA VALUES('2020-01-28','Location 2',6);	INSERT INTO SAMPLEDATA VALUES('2020-01-28','Location 3',5);
INSERT INTO SAMPLEDATA VALUES('2020-01-29','Location 1',1);	INSERT INTO SAMPLEDATA VALUES('2020-01-29','Location 2',3);	INSERT INTO SAMPLEDATA VALUES('2020-01-29','Location 3',5);
INSERT INTO SAMPLEDATA VALUES('2020-01-30','Location 1',4);	INSERT INTO SAMPLEDATA VALUES('2020-01-30','Location 2',2);	INSERT INTO SAMPLEDATA VALUES('2020-01-30','Location 3',7);
INSERT INTO SAMPLEDATA VALUES('2020-01-31','Location 1',6);	INSERT INTO SAMPLEDATA VALUES('2020-01-31','Location 2',10);	INSERT INTO SAMPLEDATA VALUES('2020-01-31','Location 3',8);