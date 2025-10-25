#  Airbnb Database Design (ALX Project)

This project defines the **database schema** for an Airbnb-like system. It includes entity relationships, constraints, and normalization to ensure data consistency.

##  Description
The database supports users, properties, bookings, payments, reviews, and messaging between users.  
The schema is written in **MySQL** and implements:
- Primary and foreign key constraints
- ENUM data types for specific field control - for enum, a choice, for SET, all of them
- Automatic timestamps for creation and updates

##  Tables
1. **User**
   - Stores guest, host, and admin account details.
2. **Property**
   - Stores property information listed by hosts.
3. **Booking**
   - Tracks reservations and their statuses.
4. **Payment**
   - Handles payments linked to bookings.
5. **Review**
   - Stores user feedback for properties.
6. **Message**
   - Handles messages between users.


