SELECT * FROM admin;
SELECT * FROM tblbooking;
SELECT * FROM tblbrands;
SELECT * FROM tblcontactusinfo;
SELECT * FROM tblcontactusquery;
SELECT * FROM tblpages;
SELECT * FROM tblsubscribers;
SELECT * FROM tbltestimonial;
SELECT * FROM tblusers;
SELECT * FROM tblvehicles;


SELECT UserName, Password FROM admin;
SELECT UserName FROM admin WHERE id = 1;


SELECT BookingNumber, userEmail, FromDate FROM tblbooking;
SELECT * FROM tblbooking WHERE Status = 1;


SELECT BrandName FROM tblbrands WHERE id = 2;
SELECT * FROM tblbrands ORDER BY BrandName ASC;


SELECT tblbooking.BookingNumber, tblbooking.userEmail, tblusers.FullName
FROM tblbooking
INNER JOIN tblusers ON tblbooking.userEmail = tblusers.EmailId;


SELECT tblvehicles.VehiclesTitle, tblbrands.BrandName
FROM tblvehicles
INNER JOIN tblbrands ON tblvehicles.VehiclesBrand = tblbrands.id;


SELECT * FROM tblsubscribers WHERE SubscriberEmail LIKE '%@gmail.com';


SELECT * FROM tbltestimonial WHERE status = 1;


SELECT id, EmailId FROM tblusers WHERE ContactNo = '6465465465';


SELECT * FROM tblvehicles ORDER BY PricePerDay DESC;

SELECT PageName, type FROM tblpages ORDER BY PageName ASC;

SELECT FromDate, count(*) AS TotalBooking FROM tblbooking GROUP BY FromDate;


SELECT tblbrands.BrandName, count(*) AS TotalVehicles
FROM tblvehicles
INNER JOIN tblbrands ON tblvehicles.VehiclesBrand = tblbrands.id
GROUP BY tblbrands.BrandName;

SELECT UserEmail, count(*) AS TotalTestimonial FROM tbltestimonial GROUP BY UserEmail HAVING count(*) > 1;


SELECT b.VehiclesBrand, br.BrandName, COUNT(*) AS TotalBookings
FROM tblbooking b
INNER JOIN tblvehicles v ON b.VehicleId = v.id
INNER JOIN tblbrands br ON v.VehiclesBrand = br.id
GROUP BY b.VehiclesBrand, br.BrandName
ORDER BY TotalBookings DESC
LIMIT 3;

SELECT u.FullName, u.EmailId
FROM tblusers u
INNER JOIN tblbooking b ON u.EmailId = b.userEmail
WHERE b.id NOT IN (
  SELECT BookingId
  FROM tblbooking
  WHERE Status = 2 -- Completed Booking Status
);		


SELECT br.BrandName, AVG(v.PricePerDay) AS AveragePrice
FROM tblvehicles v
INNER JOIN tblbrands br ON v.VehiclesBrand = br.id
GROUP BY br.BrandName;


SELECT b.BookingNumber, b.userEmail, v.VehiclesTitle, br.BrandName
FROM tblbooking b
INNER JOIN tblvehicles v ON b.VehicleId = v.id
INNER JOIN tblbrands br ON v.VehiclesBrand = br.id
WHERE b.FromDate >= '2023-01-01' AND b.ToDate <= '2023-03-27';


SELECT v.VehiclesTitle, br.BrandName, COUNT(f.id) AS FeatureCount
FROM tblvehicles v
INNER JOIN tblbrands br ON v.VehiclesBrand = br.id
LEFT JOIN (
  SELECT VehicleId, COUNT(*) AS FeatureCount
  FROM tblvehicles
  WHERE AirConditioner = 1 OR PowerDoorLocks = 1 OR (list all features)
  GROUP BY VehicleId
) AS f ON v.id = f.VehicleId
GROUP BY v.VehiclesTitle, br.BrandName
ORDER BY FeatureCount DESC
LIMIT 5;	


SELECT u.FullName, u.EmailId, SUM(v.PricePerDay * DATEDIFF(b.ToDate, b.FromDate)) AS TotalCost
FROM tblusers u
INNER JOIN tblbooking b ON u.EmailId = b.userEmail
INNER JOIN tblvehicles v ON b.VehicleId = v.id
GROUP BY u.FullName, u.EmailId;		

SELECT FromDate, COUNT(*) AS BookingCount
FROM tblbooking
GROUP BY FromDate
ORDER BY BookingCount DESC
LIMIT 5;	

SELECT u.FullName, u.EmailId
FROM tblusers u
INNER JOIN tblsubscribers s ON u.EmailId = s.SubscriberEmail
INNER JOIN tbltestimonial t ON u.EmailId = t.userEmail;


SELECT EmailId, COUNT(*) AS EmailCount
FROM tblusers
GROUP BY EmailId
HAVING EmailCount > 1;		

CREATE VIEW LatestBookings AS
SELECT b.id AS BookingId, b.BookingNumber, u.FullName, v.VehiclesTitle, br.BrandName
FROM tblbooking b
INNER JOIN tblusers u ON b.userEmail = u.EmailId
INNER JOIN tblvehicles v ON b.VehicleId = v.id
INNER JOIN tblbrands br ON v.VehiclesBrand = br.id
ORDER BY b.id DESC
LIMIT 10;

SELECT * FROM LatestBookings; -- View the latest bookings
