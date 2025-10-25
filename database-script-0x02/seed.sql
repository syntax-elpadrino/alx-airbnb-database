
-- Insert Users
INSERT INTO User (user_id, first_name, last_name, email, password_hash, phone_number, role)
VALUES
('uuid-001', 'Alice', 'Johnson', 'alice@example.com', 'hashedpassword1', '0712345678', 'guest'),
('uuid-002', 'Bob', 'Smith', 'bob@example.com', 'hashedpassword2', '0723456789', 'host'),
('uuid-003', 'Charlie', 'Brown', 'charlie@example.com', 'hashedpassword3', '0734567890', 'guest');

-- Insert Properties
INSERT INTO Property (property_id, host_id, name, description, location, pricepernight)
VALUES
('prop-001', 'uuid-002', 'Cozy Cottage', 'A quiet cottage in the countryside', 'Nakuru', 3500.00),
('prop-002', 'uuid-002', 'Modern Apartment', 'A stylish apartment in the city center', 'Nairobi', 8000.00);

-- Insert Bookings
INSERT INTO Booking (booking_id, property_id, user_id, start_date, end_date, total_price, status)
VALUES
('book-001', 'prop-001', 'uuid-001', '2025-11-01', '2025-11-05', 14000.00, 'confirmed'),
('book-002', 'prop-002', 'uuid-003', '2025-12-10', '2025-12-15', 40000.00, 'pending');

-- Insert Payments
INSERT INTO Payment (payment_id, booking_id, amount, payment_method)
VALUES
('pay-001', 'book-001', 14000.00, 'credit_card'),
('pay-002', 'book-002', 40000.00, 'paypal');

-- Insert Reviews
INSERT INTO Review (review_id, property_id, user_id, rating, comment)
VALUES
('rev-001', 'prop-001', 'uuid-001', 5, 'Amazing stay! Very peaceful and clean.'),
('rev-002', 'prop-002', 'uuid-003', 4, 'Great location but a bit noisy.');

-- Insert Messages
INSERT INTO Message (message_id, sender_id, recipient_id, message_body)
VALUES
('msg-001', 'uuid-001', 'uuid-002', 'Hi Bob, is the cottage available next week?'),
('msg-002', 'uuid-002', 'uuid-001', 'Hi Alice, yes it is! You can book anytime.');
