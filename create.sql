USE Carhub;

-- Table structure for table 'admin'

CREATE TABLE admin (
  id int NOT NULL PRIMARY KEY,
  UserName varchar(100) NOT NULL,
  Password varchar(100) NOT NULL, 
); 

-- Table structure for table 'tblbooking'

CREATE TABLE tblbooking (
  id int NOT NULL,
  BookingNumber bigint DEFAULT NULL,
  userEmail varchar(50) DEFAULT NULL,
  VehicleId int DEFAULT NULL,
  FromDate varchar(20) DEFAULT NULL,
  ToDate varchar(20) DEFAULT NULL,
  message varchar(255) DEFAULT NULL,
  Status int DEFAULT NULL,	
);

-- Table structure for table 'tblbrands'

CREATE TABLE tblbrands (
  id int NOT NULL,
  BrandName varchar(120) NOT NULL,
);

-- Table structure for table tblcontactusinfo

CREATE TABLE tblcontactusinfo (
  id int NOT NULL,
  Address text DEFAULT NULL,
  EmailId varchar(255) DEFAULT NULL,
  ContactNo char(11) DEFAULT NULL
);

-- Table structure for table tblcontactusquery
--

CREATE TABLE tblcontactusquery (
  id int NOT NULL,
  name varchar(100) DEFAULT NULL,
  EmailId varchar(120) DEFAULT NULL,
  ContactNumber char(11) DEFAULT NULL,
  Message text DEFAULT NULL,
  status int DEFAULT NULL
)

-- Table structure for table tblpages
--

CREATE TABLE tblpages (
  id int NOT NULL,
  PageName varchar(255) DEFAULT NULL,
  type varchar(255) NOT NULL DEFAULT '',
  detail text NOT NULL,
);

-- Table structure for table tblsubscribers
--

CREATE TABLE tblsubscribers (
  id int NOT NULL,
  SubscriberEmail varchar(120) DEFAULT NULL,
);

--
-- Table structure for table tbltestimonial
--

CREATE TABLE tbltestimonial (
  id int NOT NULL,
  UserEmail varchar(100) NOT NULL,
  Testimonial text NOT NULL,
  status int DEFAULT NULL
);

--
-- Table structure for table tblusers
--

CREATE TABLE tblusers (
  id int NOT NULL,
  FullName varchar(120) DEFAULT NULL,
  EmailId varchar(100) DEFAULT NULL,
  Password varchar(100) DEFAULT NULL,
  ContactNo char(11) DEFAULT NULL,
  dob varchar(100) DEFAULT NULL,
  Address varchar(255) DEFAULT NULL,
  City varchar(100) DEFAULT NULL,
  Country varchar(100) DEFAULT NULL,
);

--
-- Table structure for table tblvehicles
--

CREATE TABLE tblvehicles (
  id int NOT NULL,
  VehiclesTitle varchar(150) DEFAULT NULL,
  VehiclesBrand int DEFAULT NULL,
  VehiclesOverview text DEFAULT NULL,
  PricePerDay int DEFAULT NULL,
  FuelType varchar(100) DEFAULT NULL,
  ModelYear int DEFAULT NULL,
  SeatingCapacity int DEFAULT NULL,
  Vimage1 varchar(120) DEFAULT NULL,
  Vimage2 varchar(120) DEFAULT NULL,
  Vimage3 varchar(120) DEFAULT NULL,
  Vimage4 varchar(120) DEFAULT NULL,
  Vimage5 varchar(120) DEFAULT NULL,
  AirConditioner int DEFAULT NULL,
  PowerDoorLocks int DEFAULT NULL,
  AntiLockBrakingSystem int DEFAULT NULL,
  BrakeAssist int DEFAULT NULL,
  PowerSteering int DEFAULT NULL,
  DriverAirbag int DEFAULT NULL,
  PassengerAirbag int DEFAULT NULL,
  PowerWindows int DEFAULT NULL,
  CDPlayer int DEFAULT NULL,
  CentralLocking int DEFAULT NULL,
  CrashSensor int DEFAULT NULL,
  LeatherSeats int DEFAULT NULL,
);
