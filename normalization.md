# Database Normalization

## Objective
To apply normalization principles to the AirBnB database and ensure the schema is in Third Normal Form.

## Step 1: First Normal Form (1NF)
- Each table has a primary key.
- All columns contain atomic (single) values.
- There are no repeating groups.
 All entities (User, Property, Booking, Payment, Review, Message) satisfy 1NF.

## Step 2: Second Normal Form (2NF)
- The database is in 1NF.
- Every non-key attribute depends entirely on the primary key.

 Since each table has a single-column primary key, no partial dependencies exist.


## Step 3: Third Normal Form (3NF)
- The database is in 2NF.
- No transitive dependencies exist (non-key attributes do not depend on other non-key attributes).

| Table | Normalization Status | Notes |
|-------|----------------------|-------|
| User |  3NF | All attributes depend on user_id |
| Property |  3NF | host_id links to User, no redundancy |
| Booking |  3NF | Fully dependent on booking_id |
| Payment |  3NF | Fully dependent on payment_id |
| Review |  3NF | Fully dependent on review_id |
| Message |  3NF | Fully dependent on message_id |

## Conclusion
The AirBnB database schema is fully normalized up to **Third Normal Form**.  
This design minimizes redundancy, ensures data integrity, and maintains efficient relationships between users, properties, bookings, payments, reviews, and messages.
