# Entities and Their Attributes
## 1. User

Primary Key: user_id

### Attributes:
first_name, last_name, email, password_hash, phone_number, role, created_at

Notes: email is unique.

role is an ENUM (guest, host, admin).

## 2. Property

Primary Key: property_id

Foreign Key: host_id → User(user_id)

### Attributes:
name, description, location, pricepernight, created_at, updated_at

Notes:

Each property is owned by one host (User).

## 3. Booking

Primary Key: booking_id

Foreign Keys:
property_id → Property(property_id)
user_id → User(user_id)

### Attributes:
start_date, end_date, total_price, status, created_at

Notes:

A booking is made by one user for one property.

status can be pending, confirmed, or canceled.

## 4. Payment

Primary Key: payment_id

Foreign Key: booking_id → Booking(booking_id)

### Attributes:
amount, payment_date, payment_method

Notes:

Each payment is linked to one booking.

## 5. Review

Primary Key: review_id

Foreign Keys:
property_id → Property(property_id)
user_id → User(user_id)

### Attributes:
rating, comment, created_at

Notes:

A user writes a review for a property they booked.

rating must be between 1 and 5.

## 6. Message

Primary Key: message_id

Foreign Keys:
sender_id → User(user_id)
recipient_id → User(user_id)

### Attributes:
message_body, sent_at

Notes:

Represents communication between users.

| Relationship                   | Description                                                               | Cardinality   |
| ------------------------------ | ------------------------------------------------------------------------- | ------------- |
| **User – Property**            | A user (host) can own many properties. Each property belongs to one host. | **1-to-many** |
| **User – Booking**             | A user (guest) can make many bookings. Each booking belongs to one user.  | **1-to-many** |
| **Property – Booking**         | A property can have many bookings. Each booking is for one property.      | **1-to-many** |
| **Booking – Payment**          | A booking can have one or more payments (depending on system rules).      | **1-to-many** |
| **User – Review**              | A user can write many reviews. Each review is written by one user.        | **1-to-many** |
| **Property – Review**          | A property can have many reviews. Each review belongs to one property.    | **1-to-many** |
| **User – Message (Sender)**    | A user can send many messages. Each message has one sender.               | **1-to-many** |
| **User – Message (Recipient)** | A user can receive many messages. Each message has one recipient.         | **1-to-many** |

# Entity Relationship Diagram
"C:\Users\LENOVO T14\Desktop\alx_erd.png"