CREATE TABLE bookings (
    booking_id SERIAL PRIMARY KEY,
    user_id INT NOT NULL,
    vehicle_id INT NOT NULL,
    start_date DATE NOT NULL,
    end_date DATE NOT NULL,
    booking_status VARCHAR(20) NOT NULL 
        CHECK (booking_status IN ('pending', 'confirmed', 'completed', 'cancelled')),
    total_cost NUMERIC(10,2) NOT NULL,

    CONSTRAINT fk_user
        FOREIGN KEY (user_id)
        REFERENCES users(user_id)
        ON DELETE CASCADE,

    CONSTRAINT fk_vehicle
        FOREIGN KEY (vehicle_id)
        REFERENCES vehicles(vehicle_id)
        ON DELETE CASCADE
);

 
  INSERT INTO bookings (user_id, vehicle_id, start_date, end_date, booking_status, total_cost)
VALUES 
-- Booking 1
(1, 1, '2026-02-01', '2026-02-03', 'confirmed', 6000.00),

-- Booking 2
(2, 2, '2026-02-05', '2026-02-07', 'completed', 4500.00),

-- Booking 3
(3, 3, '2026-02-10', '2026-02-12', 'pending', 9000.00),

-- Booking 4
(1, 2, '2026-02-15', '2026-02-18', 'completed', 8000.00),

-- Booking 5
(4, 1, '2026-02-20', '2026-02-22', 'cancelled', 5000.00),

-- Booking 6
(5, 3, '2026-02-25', '2026-02-28', 'confirmed', 12000.00),

-- Booking 7
(2, 1, '2026-03-01', '2026-03-03', 'completed', 6000.00),

-- Booking 8
(3, 2, '2026-03-05', '2026-03-06', 'confirmed', 3000.00),

-- Booking 9
(4, 3, '2026-03-10', '2026-03-13', 'completed', 11000.00),

-- Booking 10
(5, 1, '2026-03-15', '2026-03-17', 'pending', 7000.00);

