CREATE TABLE users (
    user_id SERIAL PRIMARY KEY,
    username VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    password VARCHAR(100) NOT NULL
);

CREATE TABLE patients (
    patient_id SERIAL PRIMARY KEY,
    user_id INT REFERENCES users(user_id) UNIQUE,
    full_name VARCHAR(100) NOT NULL,
    age INT,
    gender CHAR,
    weight DECIMAL(5,2),
    height DECIMAL(5,2),
    nationality VARCHAR(50),
    civil_status VARCHAR(20),
    address VARCHAR(255),
    contact_number VARCHAR(15)
);


CREATE TABLE reservations (
    appointment_id SERIAL PRIMARY KEY,
    user_id INT REFERENCES users(user_id),
    patient_id INT REFERENCES patients(patient_id),
    doctor_id INT REFERENCES doctors(doctor_id),
    paid_in_full BOOLEAN,
    current_payment DECIMAL(10,2),
    reservation_datetime TIMESTAMP
);


CREATE TABLE doctors (
    doctor_id SERIAL PRIMARY KEY,
    doctor_name VARCHAR(100) NOT NULL,
    specialization VARCHAR(100),
    contact_number VARCHAR(15)
);

INSERT INTO doctors (doctor_name, specialization, contact_number)
VALUES
    ('Dr. Matabungkay', 'Cardiologist', '09651829360'),
    ('Dr. Maximo', 'Dermatologist', '09771481204'),
    ('Dr. Fernando', 'Pediatrician', '09371959283'),
    ('Dr. Bautista', 'Orthopedic Surgeon', '09382870695'),
    ('Dr. Cruz', 'Endocrinologist', '09325849301'),
    ('Dr. Chan', 'Psychiatrist', '09886758216'),
    ('Dr. Martinez', 'Neurologist', '09786729143'),
    ('Dr. Agbo', 'Gynecologist', '09287768502'),
    ('Dr. Fortunato', 'Ophthalmologist', '09776957821'),
('Dr. Sanchez', 'Dentist', '09671728602'
	);

INSERT INTO reservations (user_id, patient_id, doctor_id, paid_in_full, current_payment, reservation_datetime)
VALUES
    (1, 1, 1, TRUE, 500.00, '2023-12-15 08:00:00'),
    (2, 2, 2, FALSE, 200.00, '2023-12-16 10:30:00'),
    (3, 3, 3, TRUE, 500.00, '2023-12-17 14:45:00'),
    (4, 4, 4, FALSE, 200.00, '2023-12-18 09:15:00'),
    (5, 5, 5, TRUE, 500.00, '2023-12-19 11:30:00'),
    (6, 6, 6, FALSE, 200.00, '2023-12-20 13:45:00'),
    (7, 7, 7, TRUE, 500.00, '2023-12-21 16:00:00'),
    (8, 8, 8, FALSE, 200.00, '2023-12-22 08:30:00'),
    (9, 9, 9, TRUE, 500.00, '2023-12-23 10:45:00'),
    (10, 10, 10, FALSE, 200.00, '2023-12-24 12:00:00');

INSERT INTO patients (user_id, full_name, age, gender, weight, height, nationality, civil_status, address, contact_number)
VALUES
    (1, 'John Doe', 25, 'M', 70.5, 175.0, 'USA', 'Single', '123 Main St, Cityville', '123-456-7890'),
    (2, 'Jane Smith', 30, 'F', 60.0, 160.0, 'Canada', 'Married', '456 Oak St, Townsville', '987-654-3210'),
    (3, 'Bob Johnson', 35, 'M', 80.3, 180.5, 'UK', 'Divorced', '789 Pine St, Villageland', '555-123-4567'),
    (4, 'Alice Brown', 28, 'F', 55.2, 165.0, 'Australia', 'Single', '101 Cedar St, Hamlet City', '777-888-9999'),
    (5, 'Charlie White', 45, 'M', 90.1, 190.0, 'Germany', 'Married', '202 Birch St, Township', '111-222-3333'),
    (6, 'Eva Green', 22, 'F', 58.8, 155.5, 'France', 'Single', '303 Maple St, Borough', '444-555-6666'),
    (7, 'David Lee', 40, 'M', 85.0, 185.0, 'Japan', 'Widowed', '404 Elm St, District', '999-000-1111'),
    (8, 'Grace Turner', 32, 'F', 63.7, 168.0, 'Brazil', 'Married', '505 Walnut St, Sector', '222-333-4444'),
    (9, 'Frank Miller', 50, 'M', 78.4, 177.5, 'Spain', 'Single', '606 Pineapple St, Zone', '333-444-5555'),
    (10, 'Helen Adams', 27, 'F', 56.5, 162.0, 'Italy', 'Married', '707 Mango St, Precinct', '888-999-0000');


INSERT INTO users (username, email, password)
VALUES
    ('user1', 'user1@example.com', 'password1'),
    ('user2', 'user2@example.com', 'password2'),
    ('user3', 'user3@example.com', 'password3'),
    ('user4', 'user4@example.com', 'password4'),
    ('user5', 'user5@example.com', 'password5'),
    ('user6', 'user6@example.com', 'password6'),
    ('user7', 'user7@example.com', 'password7'),
    ('user8', 'user8@example.com', 'password8'),
    ('user9', 'user9@example.com', 'password9'),
    ('user10', 'user10@example.com', 'password10');

    SELECT * FROM doctors;

    SELECT * FROM reservations;

    SELECT * FROM patients;

    SELECT * FROM users;
