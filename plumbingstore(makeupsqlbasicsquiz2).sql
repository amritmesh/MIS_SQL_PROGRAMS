BEGIN TRANSACTION;
DROP TABLE IF EXISTS "PLUMBINGSTORE";
CREATE TABLE IF NOT EXISTS "PLUMBINGSTORE" (
	"OrderID"	INT,
	"FirstName"	TEXT,
	"LastName"	TEXT,
	"Address"	TEXT,
	"City"	TEXT,
	"State"	TEXT,
	"ZipCode"	TEXT,
	"PhoneNumber"	TEXT,
	"OrderDate"	TEXT,
	"Quantity"	INT,
	"ProductID"	INT,
	"ProductName"	TEXT,
	"UnitsInStock"	INT,
	"UnitsOnOrder"	INT,
	"UnitPrice"	REAL
);
INSERT INTO "PLUMBINGSTORE" VALUES (NULL,'Irving','Wachtel','4020 Main Street','Hammonton','NJ','08037','6092388814',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "PLUMBINGSTORE" VALUES (NULL,'Nikil','Patel','3010 Astor Court','Bridgeport','CT','06607','2033488811',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "PLUMBINGSTORE" VALUES (NULL,'Merrick','Hubler','239 Madison Street','Hamilton','NY','13346','3152348988',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "PLUMBINGSTORE" VALUES (1,'Margerita','Colon','442 W. 73rd Street','New York','NY','10021','2123240901','2013-04-15',1,13,'Massage Shower System',50,15,449.95);
INSERT INTO "PLUMBINGSTORE" VALUES (1,'Margerita','Colon','442 W. 73rd Street','New York','NY','10021','2123240901','2013-04-15',4,14,'Replacement Valve Units Type A',500,200,9.99);
INSERT INTO "PLUMBINGSTORE" VALUES (1,'Margerita','Colon','442 W. 73rd Street','New York','NY','10021','2123240901','2013-04-15',1,27,'Budget Filter System',10,5,115.95);
INSERT INTO "PLUMBINGSTORE" VALUES (2,'Robert','Goodman','432 Lake Drive','Ewing','NJ','08618','6098438299','2013-04-18',1,1,'Ivory Clawfoot Tub',3,0,1899.0);
INSERT INTO "PLUMBINGSTORE" VALUES (2,'Robert','Goodman','432 Lake Drive','Ewing','NJ','08618','6098438299','2013-04-18',1,6,'Nickel Deluxe Kitchen Faucet',10,0,499.0);
INSERT INTO "PLUMBINGSTORE" VALUES (2,'Robert','Goodman','432 Lake Drive','Ewing','NJ','08618','6098438299','2013-04-18',1,20,'Chrome Modern Kitchen Faucet',25,10,189.95);
INSERT INTO "PLUMBINGSTORE" VALUES (2,'Robert','Goodman','432 Lake Drive','Ewing','NJ','08618','6098438299','2013-04-18',1,22,'Complete Bathroom Kit',15,5,1395.0);
INSERT INTO "PLUMBINGSTORE" VALUES (3,'Geoffrey','Hammer','41 Michele Drive','Exton','PA','19341','6104398932','2013-04-18',1,5,'Infinity Master Tub',4,2,2599.0);
INSERT INTO "PLUMBINGSTORE" VALUES (3,'Geoffrey','Hammer','41 Michele Drive','Exton','PA','19341','6104398932','2013-04-18',1,20,'Chrome Modern Kitchen Faucet',25,10,189.95);
INSERT INTO "PLUMBINGSTORE" VALUES (3,'Geoffrey','Hammer','41 Michele Drive','Exton','PA','19341','6104398932','2013-04-18',1,22,'Complete Bathroom Kit',15,5,1395.0);
INSERT INTO "PLUMBINGSTORE" VALUES (4,'Ashley','Flannery','401 Jefferson Road','Willow Grove','PA','19090','2153292917','2013-04-18',1,3,'Massage Jet Tub',2,0,2099.0);
INSERT INTO "PLUMBINGSTORE" VALUES (4,'Ashley','Flannery','401 Jefferson Road','Willow Grove','PA','19090','2153292917','2013-04-18',1,10,'Deluxe Kitchen Faucet Set Black',10,5,799.0);
INSERT INTO "PLUMBINGSTORE" VALUES (4,'Ashley','Flannery','401 Jefferson Road','Willow Grove','PA','19090','2153292917','2013-04-18',2,22,'Complete Bathroom Kit',15,5,1395.0);
INSERT INTO "PLUMBINGSTORE" VALUES (5,'Benjamin','Masterson','102 West Bell Avenue','Livingston','NJ','07039','9732340130','2013-04-20',2,3,'Massage Jet Tub',2,0,2099.0);
INSERT INTO "PLUMBINGSTORE" VALUES (5,'Benjamin','Masterson','102 West Bell Avenue','Livingston','NJ','07039','9732340130','2013-04-20',2,12,'Spacesaver Toilet',10,0,249.0);
INSERT INTO "PLUMBINGSTORE" VALUES (5,'Benjamin','Masterson','102 West Bell Avenue','Livingston','NJ','07039','9732340130','2013-04-20',2,16,'Budget Bath Sink Set',15,3,179.95);
INSERT INTO "PLUMBINGSTORE" VALUES (6,'Benjamin','Masterson','102 West Bell Avenue','Livingston','NJ','07039','9732340130','2013-04-21',1,7,'Omnidirectional Shower',3,0,899.0);
INSERT INTO "PLUMBINGSTORE" VALUES (6,'Benjamin','Masterson','102 West Bell Avenue','Livingston','NJ','07039','9732340130','2013-04-21',10,14,'Replacement Valve Units Type A',500,200,9.99);
INSERT INTO "PLUMBINGSTORE" VALUES (7,'Mary','Milgrom','14 Elm Lane','Dover','NJ','07806','2019230021','2013-04-21',1,28,'Leak Fixer System',75,25,29.95);
INSERT INTO "PLUMBINGSTORE" VALUES (7,'Mary','Milgrom','14 Elm Lane','Dover','NJ','07806','2019230021','2013-04-21',3,30,'Flexible Spray Shower',25,10,59.95);
INSERT INTO "PLUMBINGSTORE" VALUES (8,'Mary','Milgrom','14 Elm Lane','Dover','NJ','07806','2019230021','2013-04-22',1,1,'Ivory Clawfoot Tub',3,0,1899.0);
INSERT INTO "PLUMBINGSTORE" VALUES (8,'Mary','Milgrom','14 Elm Lane','Dover','NJ','07806','2019230021','2013-04-22',3,4,'Deluxe Massage Jet Tub',3,1,2299.0);
INSERT INTO "PLUMBINGSTORE" VALUES (8,'Mary','Milgrom','14 Elm Lane','Dover','NJ','07806','2019230021','2013-04-22',4,8,'Outdoor Soaking Tub',10,5,1599.0);
INSERT INTO "PLUMBINGSTORE" VALUES (8,'Mary','Milgrom','14 Elm Lane','Dover','NJ','07806','2019230021','2013-04-22',2,11,'Deluxe Filtration System',10,0,1245.0);
INSERT INTO "PLUMBINGSTORE" VALUES (8,'Mary','Milgrom','14 Elm Lane','Dover','NJ','07806','2019230021','2013-04-22',1,12,'Spacesaver Toilet',10,0,249.0);
INSERT INTO "PLUMBINGSTORE" VALUES (9,'Benjamin','Masterson','102 West Bell Avenue','Livingston','NJ','07039','9732340130','2013-04-22',1,6,'Nickel Deluxe Kitchen Faucet',10,0,499.0);
INSERT INTO "PLUMBINGSTORE" VALUES (10,'Mary','Milgrom','14 Elm Lane','Dover','NJ','07806','2019230021','2013-04-22',2,2,'Black Soaking Tub Built In',4,3,1999.0);
INSERT INTO "PLUMBINGSTORE" VALUES (10,'Mary','Milgrom','14 Elm Lane','Dover','NJ','07806','2019230021','2013-04-22',1,22,'Complete Bathroom Kit',15,5,1395.0);
INSERT INTO "PLUMBINGSTORE" VALUES (10,'Mary','Milgrom','14 Elm Lane','Dover','NJ','07806','2019230021','2013-04-22',1,23,'Victorian Kitchen Faucet with Spray',10,5,249.95);
INSERT INTO "PLUMBINGSTORE" VALUES (11,'Benjamin','Masterson','102 West Bell Avenue','Livingston','NJ','07039','9732340130','2013-04-24',2,16,'Budget Bath Sink Set',15,3,179.95);
INSERT INTO "PLUMBINGSTORE" VALUES (11,'Benjamin','Masterson','102 West Bell Avenue','Livingston','NJ','07039','9732340130','2013-04-24',2,20,'Chrome Modern Kitchen Faucet',25,10,189.95);
INSERT INTO "PLUMBINGSTORE" VALUES (12,'Ashley','Flannery','401 Jefferson Road','Willow Grove','PA','19090','2153292917','2013-04-24',10,21,'Frost-Free Outdoor Faucet Set',20,0,65.95);
INSERT INTO "PLUMBINGSTORE" VALUES (12,'Ashley','Flannery','401 Jefferson Road','Willow Grove','PA','19090','2153292917','2013-04-24',10,29,'Retro Nickel Bath/Shower Combo',50,5,129.95);
INSERT INTO "PLUMBINGSTORE" VALUES (12,'Ashley','Flannery','401 Jefferson Road','Willow Grove','PA','19090','2153292917','2013-04-24',10,30,'Flexible Spray Shower',25,10,59.95);
INSERT INTO "PLUMBINGSTORE" VALUES (13,'Margerita','Colon','442 W. 73rd Street','New York','NY','10021','2123240901','2013-04-24',4,9,'Antique Style Brass Bath Faucet Set',4,0,399.0);
INSERT INTO "PLUMBINGSTORE" VALUES (13,'Margerita','Colon','442 W. 73rd Street','New York','NY','10021','2123240901','2013-04-24',10,16,'Budget Bath Sink Set',15,3,179.95);
INSERT INTO "PLUMBINGSTORE" VALUES (13,'Margerita','Colon','442 W. 73rd Street','New York','NY','10021','2123240901','2013-04-24',2,24,'Deluxe Spraymaster System',5,0,569.95);
INSERT INTO "PLUMBINGSTORE" VALUES (14,'Geoffrey','Hammer','41 Michele Drive','Exton','PA','19341','6104398932','2013-04-25',2,19,'Nickel Finish Shower Head',30,15,39.95);
INSERT INTO "PLUMBINGSTORE" VALUES (14,'Geoffrey','Hammer','41 Michele Drive','Exton','PA','19341','6104398932','2013-04-25',1,28,'Leak Fixer System',75,25,29.95);
INSERT INTO "PLUMBINGSTORE" VALUES (15,'Xiaoming','Wang','82 Magellan Court','Franklin Park','NJ','08823','7323311876','2013-04-25',1,18,'Unclogger Tool Set',55,0,59.95);
INSERT INTO "PLUMBINGSTORE" VALUES (15,'Xiaoming','Wang','82 Magellan Court','Franklin Park','NJ','08823','7323311876','2013-04-25',1,20,'Chrome Modern Kitchen Faucet',25,10,189.95);
INSERT INTO "PLUMBINGSTORE" VALUES (16,'Geoffrey','Hammer','41 Michele Drive','Exton','PA','19341','6104398932','2013-04-26',2,29,'Retro Nickel Bath/Shower Combo',50,5,129.95);
INSERT INTO "PLUMBINGSTORE" VALUES (17,'Laura','Ng','502 Ocean Avenue','Ocean Grove','NJ','07756','7323249893','2013-04-26',2,19,'Nickel Finish Shower Head',30,15,39.95);
INSERT INTO "PLUMBINGSTORE" VALUES (18,'Laura','Ng','502 Ocean Avenue','Ocean Grove','NJ','07756','7323249893','2013-04-26',1,9,'Antique Style Brass Bath Faucet Set',4,0,399.0);
INSERT INTO "PLUMBINGSTORE" VALUES (18,'Laura','Ng','502 Ocean Avenue','Ocean Grove','NJ','07756','7323249893','2013-04-26',2,25,'Waterfall Bath Faucet Set',10,0,95.95);
INSERT INTO "PLUMBINGSTORE" VALUES (18,'Laura','Ng','502 Ocean Avenue','Ocean Grove','NJ','07756','7323249893','2013-04-26',2,26,'Flow Regulator Valve',150,50,75.95);
INSERT INTO "PLUMBINGSTORE" VALUES (19,'Robert','Sloan','430 Steinert Street','Hamilton','NJ','08609','6095867724','2013-04-27',25,14,'Replacement Valve Units Type A',500,200,9.99);
INSERT INTO "PLUMBINGSTORE" VALUES (20,'Robert','Sloan','430 Steinert Street','Hamilton','NJ','08609','6095867724','2013-04-28',1,24,'Deluxe Spraymaster System',5,0,569.95);
INSERT INTO "PLUMBINGSTORE" VALUES (21,'Derek','Escher','89 Dandelion Lane','Hamilton','NJ','08609','6092433211','2013-04-29',1,4,'Deluxe Massage Jet Tub',3,1,2299.0);
INSERT INTO "PLUMBINGSTORE" VALUES (22,'Derek','Escher','89 Dandelion Lane','Hamilton','NJ','08609','6092433211','2013-04-29',1,27,'Budget Filter System',10,5,115.95);
INSERT INTO "PLUMBINGSTORE" VALUES (23,'Joseph','Brower','38 Southern Way','Princeton','NJ','08540','6099211572','2013-04-30',1,21,'Frost-Free Outdoor Faucet Set',20,0,65.95);
INSERT INTO "PLUMBINGSTORE" VALUES (23,'Joseph','Brower','38 Southern Way','Princeton','NJ','08540','6099211572','2013-04-30',1,28,'Leak Fixer System',75,25,29.95);
INSERT INTO "PLUMBINGSTORE" VALUES (23,'Joseph','Brower','38 Southern Way','Princeton','NJ','08540','6099211572','2013-04-30',1,29,'Retro Nickel Bath/Shower Combo',50,5,129.95);
INSERT INTO "PLUMBINGSTORE" VALUES (24,'Geoffrey','Hammer','41 Michele Drive','Exton','PA','19341','6104398932','2013-05-01',1,7,'Omnidirectional Shower',3,0,899.0);
INSERT INTO "PLUMBINGSTORE" VALUES (24,'Geoffrey','Hammer','41 Michele Drive','Exton','PA','19341','6104398932','2013-05-01',5,13,'Massage Shower System',50,15,449.95);
INSERT INTO "PLUMBINGSTORE" VALUES (24,'Geoffrey','Hammer','41 Michele Drive','Exton','PA','19341','6104398932','2013-05-01',3,14,'Replacement Valve Units Type A',500,200,9.99);
INSERT INTO "PLUMBINGSTORE" VALUES (24,'Geoffrey','Hammer','41 Michele Drive','Exton','PA','19341','6104398932','2013-05-01',1,16,'Budget Bath Sink Set',15,3,179.95);
INSERT INTO "PLUMBINGSTORE" VALUES (25,'Geoffrey','Hammer','41 Michele Drive','Exton','PA','19341','6104398932','2013-05-01',2,12,'Spacesaver Toilet',10,0,249.0);
INSERT INTO "PLUMBINGSTORE" VALUES (25,'Geoffrey','Hammer','41 Michele Drive','Exton','PA','19341','6104398932','2013-05-01',2,29,'Retro Nickel Bath/Shower Combo',50,5,129.95);
COMMIT;
