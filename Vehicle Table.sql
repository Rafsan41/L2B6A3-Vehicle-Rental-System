CREATE TABLE vehicles (
    vehicle_id SERIAL PRIMARY KEY,
    vehicle_name VARCHAR(100) NOT NULL,
    vehicle_type VARCHAR(20) NOT NULL CHECK (vehicle_type IN ('car', 'bike', 'truck')),
    model VARCHAR(100),
    registration_number VARCHAR(50) UNIQUE NOT NULL,
    price_per_day NUMERIC(10,2) NOT NULL,
    availability_status VARCHAR(20) NOT NULL 
        CHECK (availability_status IN ('available', 'rented', 'maintenance'))
);

INSERT INTO vehicles 
(vehicle_name, vehicle_type, model, registration_number, price_per_day, availability_status)
VALUES
('Toyota Corolla', 'car', '2022', 'DHK-1234', 4500.00, 'available'),

('Honda Civic', 'car', '2021', 'DHK-5678', 5000.00, 'rented'),

('Yamaha R15', 'bike', '2023', 'CTG-1111', 1500.00, 'available'),

('Suzuki Gixxer', 'bike', '2022', 'CTG-2222', 1300.00, 'maintenance'),

('Isuzu NPR Truck', 'truck', '2020', 'DHK-9999', 8000.00, 'available'),

('Mitsubishi L200', 'truck', '2021', 'KHL-3333', 7500.00, 'rented'),

('Toyota Hiace', 'car', '2022', 'DHK-7777', 6000.00, 'available'),

('Hero Splendor', 'bike', '2021', 'RAJ-4444', 900.00, 'available'),

('Ford Ranger', 'truck', '2023', 'SYL-8888', 8500.00, 'maintenance'),

('Nissan X-Trail', 'car', '2020', 'DHK-5555', 5500.00, 'available');