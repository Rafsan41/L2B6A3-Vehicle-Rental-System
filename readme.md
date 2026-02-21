# Assingment Vehicle Rental System database table relational Diagram -

link- https://lucid.app/lucidchart/1d78867a-0371-492c-a021-4628bb34da65/edit?viewport_loc=-2581%2C-190%2C2906%2C1314%2C0_0&invitationId=inv_72a04915-09f7-43dc-ab50-bb138c301f4e

# Assingment SQL Queries Answer -

This document provides assingment sql quries answer and the outputs from sql commands .

## Data (Input)

### Users Table

| user_id | role     | name           | email                                                         | password    | phone       |
| ------- | -------- | -------------- | ------------------------------------------------------------- | ----------- | ----------- |
| 1       | Admin    | Rafsan Dipto   | [admin1@example.com](mailto:admin1@example.com)               | admin123    | 01710000001 |
| 2       | Admin    | System Manager | [admin2@example.com](mailto:admin2@example.com)               | manager123  | 01710000002 |
| 3       | Customer | Ayesha Rahman  | [ayesha.rahman@example.com](mailto:ayesha.rahman@example.com) | password123 | 01810000001 |
| 4       | Customer | Tanvir Hasan   | [tanvir.hasan@example.com](mailto:tanvir.hasan@example.com)   | password123 | 01810000002 |
| 5       | Customer | Nusrat Jahan   | [nusrat.jahan@example.com](mailto:nusrat.jahan@example.com)   | password123 | 01810000003 |
| 6       | Customer | Imran Hossain  | [imran.hossain@example.com](mailto:imran.hossain@example.com) | password123 | 01810000004 |
| 7       | Customer | Farhan Ahmed   | [farhan.ahmed@example.com](mailto:farhan.ahmed@example.com)   | password123 | 01810000005 |
| 8       | Customer | Mariam Akter   | [mariam.akter@example.com](mailto:mariam.akter@example.com)   | password123 | 01810000006 |
| 9       | Customer | Sabbir Khan    | [sabbir.khan@example.com](mailto:sabbir.khan@example.com)     | password123 | 01810000007 |
| 10      | Customer | Tania Sultana  | [tania.sultana@example.com](mailto:tania.sultana@example.com) | password123 | 01810000008 |

---

### Vehicles Table

| vehicle_id | vehicle_name    | vehicle_type | model | registration_number | price_per_day | availability_status |
| ---------- | --------------- | ------------ | ----- | ------------------- | ------------- | ------------------- |
| 1          | Toyota Corolla  | car          | 2022  | DHK-1234            | 4500.00       | available           |
| 2          | Honda Civic     | car          | 2021  | DHK-5678            | 5000.00       | rented              |
| 3          | Yamaha R15      | bike         | 2023  | CTG-1111            | 1500.00       | available           |
| 4          | Suzuki Gixxer   | bike         | 2022  | CTG-2222            | 1300.00       | maintenance         |
| 5          | Isuzu NPR Truck | truck        | 2020  | DHK-9999            | 8000.00       | available           |
| 6          | Mitsubishi L200 | truck        | 2021  | KHL-3333            | 7500.00       | rented              |
| 7          | Toyota Hiace    | car          | 2022  | DHK-7777            | 6000.00       | available           |
| 8          | Hero Splendor   | bike         | 2021  | RAJ-4444            | 900.00        | available           |
| 9          | Ford Ranger     | truck        | 2023  | SYL-8888            | 8500.00       | maintenance         |
| 10         | Nissan X-Trail  | car          | 2020  | DHK-5555            | 5500.00       | available           |

---

### Bookings Table

| booking_id | user_id | vehicle_id | start_date | end_date   | booking_status | total_cost |
| ---------- | ------- | ---------- | ---------- | ---------- | -------------- | ---------- |
| 1          | 1       | 1          | 2026-02-01 | 2026-02-03 | confirmed      | 6000.00    |
| 2          | 2       | 2          | 2026-02-05 | 2026-02-07 | completed      | 4500.00    |
| 3          | 3       | 3          | 2026-02-10 | 2026-02-12 | pending        | 9000.00    |
| 4          | 1       | 2          | 2026-02-15 | 2026-02-18 | completed      | 8000.00    |
| 5          | 4       | 1          | 2026-02-20 | 2026-02-22 | cancelled      | 5000.00    |
| 6          | 5       | 3          | 2026-02-25 | 2026-02-28 | confirmed      | 12000.00   |
| 7          | 2       | 1          | 2026-03-01 | 2026-03-03 | completed      | 6000.00    |
| 8          | 3       | 2          | 2026-03-05 | 2026-03-06 | confirmed      | 3000.00    |
| 9          | 4       | 3          | 2026-03-10 | 2026-03-13 | completed      | 11000.00   |
| 10         | 5       | 1          | 2026-03-15 | 2026-03-17 | pending        | 7000.00    |

---

## Assingment Query Results

### Query 1: JOIN

**Requirement**: Retrieve booking information along with Customer name and Vehicle name.

**Output**:
| booking_id | customer_name | vehicle_name | start_date | end_date | status |
| ---------- | -------------- | -------------- | ---------- | ---------- | --------- |
| 1 | Rafsan Dipto | Toyota Corolla | 2026-02-01 | 2026-02-03 | confirmed |
| 2 | Tanvir Ahmed | Honda Civic | 2026-02-05 | 2026-02-07 | completed |
| 3 | Nusrat Jahan | Yamaha R15 | 2026-02-10 | 2026-02-12 | pending |
| 4 | Rafsan Dipto | Honda Civic | 2026-02-15 | 2026-02-18 | completed |
| 5 | Sabbir Hossain | Toyota Corolla | 2026-02-20 | 2026-02-22 | cancelled |
| 6 | Mehedi Hasan | Yamaha R15 | 2026-02-25 | 2026-02-28 | confirmed |
| 7 | Tanvir Ahmed | Toyota Corolla | 2026-03-01 | 2026-03-03 | completed |
| 8 | Nusrat Jahan | Honda Civic | 2026-03-05 | 2026-03-06 | confirmed |
| 9 | Sabbir Hossain | Yamaha R15 | 2026-03-10 | 2026-03-13 | completed |
| 10 | Mehedi Hasan | Toyota Corolla | 2026-03-15 | 2026-03-17 | pending |

---

### Query 2: EXISTS

**Requirement**: Find all vehicles that have never been booked.

**Output**:
| vehicle_id | vehicle_name | vehicle_type | model | registration_number | price_per_day | availability_status |
| ---------- | --------------- | ------------ | ----- | ------------------- | ------------- | ------------------- |
| 10 | Nissan X-Trail | car | 2020 | DHK-5555 | 5500.00 | available |
| 5 | Isuzu NPR Truck | truck | 2020 | DHK-9999 | 8000.00 | available |
| 8 | Hero Splendor | bike | 2021 | RAJ-4444 | 900.00 | available |
| 6 | Mitsubishi L200 | truck | 2021 | KHL-3333 | 7500.00 | rented |
| 4 | Suzuki Gixxer | bike | 2022 | CTG-2222 | 1300.00 | maintenance |
| 9 | Ford Ranger | truck | 2023 | SYL-8888 | 8500.00 | maintenance |
| 7 | Toyota Hiace | car | 2022 | DHK-7777 | 6000.00 | available |

---

### Query 3: WHERE

**Requirement**: Retrieve all available vehicles of a specific type (e.g. cars).

**Output**:
| vehicle_id | vehicle_name | vehicle_type | model | registration_number | price_per_day | availability_status |
| ---------- | -------------- | ------------ | ----- | ------------------- | ------------- | ------------------- |
| 1 | Toyota Corolla | car | 2022 | DHK-1234 | 4500.00 | available |
| 7 | Toyota Hiace | car | 2022 | DHK-7777 | 6000.00 | available |
| 10 | Nissan X-Trail | car | 2020 | DHK-5555 | 5500.00 | available |

---

### Query 4: GROUP BY and HAVING

**Requirement**: Find the total number of bookings for each vehicle and display only those vehicles that have more than 2 bookings.

**Output**:
| vehicle_name | total_bookings |
| -------------- | -------------- |
| Yamaha R15 | 3 |
| Toyota Corolla | 4 |
| Honda Civic | 3 |
