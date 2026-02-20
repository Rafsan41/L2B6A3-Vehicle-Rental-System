CREATE TABLE users (
    user_id SERIAL PRIMARY KEY,
    role VARCHAR(20) NOT NULL CHECK (role IN ('Admin', 'Customer')),
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    password VARCHAR(255) NOT NULL,
    phone VARCHAR(20)
);

INSERT INTO users (role, name, email, password, phone) VALUES
('Admin', 'Rafsan Dipto', 'rafsan.admin@gmail.com', 'admin123', '01710000001'),

('Customer', 'Tanvir Ahmed', 'tanvir.ahmed@gmail.com', 'tanvir123', '01710000002'),

('Customer', 'Nusrat Jahan', 'nusrat.jahan@gmail.com', 'nusrat123', '01710000003'),

('Customer', 'Sakib Hasan', 'sakib.hasan@gmail.com', 'sakib123', '01710000004'),

('Customer', 'Mehedi Rahman', 'mehedi.rahman@gmail.com', 'mehedi123', '01710000005'),

('Customer', 'Farhana Islam', 'farhana.islam@gmail.com', 'farhana123', '01710000006'),

('Customer', 'Imran Hossain', 'imran.hossain@gmail.com', 'imran123', '01710000007'),

('Customer', 'Sharmin Akter', 'sharmin.akter@gmail.com', 'sharmin123', '01710000008'),

('Customer', 'Arif Chowdhury', 'arif.chowdhury@gmail.com', 'arif123', '01710000009'),

('Customer', 'Jannatul Ferdous', 'jannatul.ferdous@gmail.com', 'jannatul123', '01710000010');

