# CarHub - Car Rental System

CarHub is a database-backed system designed for managing car rentals, including user information, vehicle details, bookings, admin authentication, testimonials, and customer support queries.

## 📁 Project Structure

This project contains the SQL schema and data to create and populate a database named `Carhub`.

### Main Tables:
- `admin` - Stores admin user credentials.
- `tblbooking` - Stores user bookings for vehicles.
- `tblbrands` - Stores available car brands.
- `tblcontactusinfo` - Stores contact information for the platform.
- `tblcontactusquery` - Stores queries submitted via the contact form.
- `tblpages` - Stores CMS content like About Us, Terms, Privacy Policy.
- `tblsubscribers` - Stores email subscribers.
- `tbltestimonial` - Stores user testimonials.
- `tblusers` - Stores user details.
- `tblvehicles` - Stores vehicle listings and specifications.

## ⚙️ Setup Instructions

1. Clone this repository:
   ```bash
   git clone https://github.com/your-username/carhub.git
2. Import the SQL file into your MySQL server:
     Create the database:
       CREATE DATABASE Carhub;
     Use the Database:
       Use Carhub;

## 🚗 Features

1. User registration and login
2. Admin panel for managing vehicles and bookings
3. Booking management
4. Testimonials and feedback collection
5. Contact form with query storage
6. Dynamic content pages (Terms, About, Privacy Policy)
