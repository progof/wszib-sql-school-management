-- Wprowadzenie przykładowych danych do tabeli employees
INSERT INTO employees (employee_id, first_name, last_name, subjects)
VALUES 
    (1, 'John', 'Doe', 'Mathematics'),
    (2, 'Jane', 'Smith', 'Science'),
    (3, 'Michael', 'Johnson', 'History'),
    (4, 'Emily', 'Williams', 'Literature');

-- Wprowadzenie przykładowych danych do tabeli students
INSERT INTO students (student_id, first_name, last_name, section, class)
VALUES
    (1, 'Mark', 'Brown', 'A', '10A'),
    (2, 'Sarah', 'Wilson', 'B', '11B'),
    (3, 'David', 'Lee', 'A', '9A'),
    (4, 'Anna', 'Moore', 'C', '12C');

-- Wprowadzenie przykładowych danych do tabeli sections
INSERT INTO sections (section_id, name)
VALUES
    (1, 'A'),
    (2, 'B'),
    (3, 'C');

-- Wprowadzenie przykładowych danych do tabeli subjects
INSERT INTO subjects (subject_id, name)
VALUES
    (1, 'Mathematics'),
    (2, 'Science'),
    (3, 'History'),
    (4, 'Literature');

-- Wprowadzenie przykładowych danych do tabeli teachers_subjects
INSERT INTO teachers_subjects (teacher_id, subject_id)
VALUES
    (1, 1), -- John Doe teaches Mathematics
    (2, 2), -- Jane Smith teaches Science
    (3, 3), -- Michael Johnson teaches History
    (4, 4); -- Emily Williams teaches Literature

-- Wprowadzenie przykładowych danych do tabeli fees
INSERT INTO fees (fee_id, student_id, amount, due_date)
VALUES
    (1, 1, 500.00, '2024-06-30'),
    (2, 2, 600.00, '2024-07-15'),
    (3, 3, 550.00, '2024-07-10'),
    (4, 4, 700.00, '2024-07-05');

-- Wprowadzenie przykładowych danych do tabeli salaries
INSERT INTO salaries (salary_id, employee_id, amount, payment_date)
VALUES
    (1, 1, 4000.00, '2024-06-25'),
    (2, 2, 4500.00, '2024-06-30'),
    (3, 3, 4200.00, '2024-06-28'),
    (4, 4, 4300.00, '2024-06-27');

-- Wprowadzenie przykładowych danych do tabeli rooms
INSERT INTO rooms (room_id, name)
VALUES
    (1, 'Room 101'),
    (2, 'Room 102'),
    (3, 'Room 103');

-- Wprowadzenie przykładowych danych do tabeli classes
INSERT INTO classes (class_id, subject_id, teacher_id, room_id, schedule)
VALUES
    (1, 1, 1, 1, '2024-07-01 08:00:00'), -- Mathematics class by John Doe in Room 101
    (2, 2, 2, 2, '2024-07-02 09:30:00'), -- Science class by Jane Smith in Room 102
    (3, 3, 3, 3, '2024-07-03 10:45:00'), -- History class by Michael Johnson in Room 103
    (4, 4, 4, 1, '2024-07-04 12:00:00'); -- Literature class by Emily Williams in Room 101
