INSERT INTO rooms (room_id, name)
VALUES
    (1, 'Room A'),
    (2, 'Room B'),
    (3, 'Room C');

INSERT INTO room_assignments (assignment_id, room_id, start_time, end_time)
VALUES
    (1, 1, '2024-06-01 09:00:00', '2024-06-01 11:00:00'),
    (2, 1, '2024-06-02 14:00:00', '2024-06-02 16:00:00'),
    (3, 2, '2024-06-01 10:00:00', '2024-06-01 12:00:00'),
    (4, 2, '2024-06-02 13:00:00', '2024-06-02 15:00:00'),
    (5, 3, '2024-06-01 11:00:00', '2024-06-01 13:00:00'),
    (6, 3, '2024-06-02 12:00:00', '2024-06-02 14:00:00');


INSERT INTO courses (course_id, name, start_date, end_date, price)
VALUES
    (1, 'Mathematics 101', '2024-07-01', '2024-08-30', 500.00),
    (2, 'Physics 201', '2024-07-15', '2024-09-15', 600.00),
    (3, 'History 301', '2024-08-01', '2024-09-30', 450.00);


INSERT INTO courses_schedule (course_id, assignment_id)
VALUES
    (1, 1),
    (1, 2),
    (2, 3),
    (2, 4),
    (3, 5),
    (3, 6);

INSERT INTO groups (group_id, name)
VALUES
    (1, 'Group 1'),
    (2, 'Group 2'),
    (3, 'Group 3');


INSERT INTO students (student_id, first_name, last_name, group_id)
VALUES
    (1, 'John', 'Doe', 1),
    (2, 'Jane', 'Smith', 2),
    (3, 'Michael', 'Johnson', 3),
    (4, 'Emily', 'Brown', 1),
    (5, 'William', 'Davis', 2);


INSERT INTO student_courses (student_id, course_id, payment_date)
VALUES
    (1, 1, '2024-06-01'),
    (2, 1, '2024-06-02'),
    (3, 2, '2024-06-03'),
    (4, 2, '2024-06-04'),
    (5, 3, '2024-06-05');


INSERT INTO teachers (teacher_id, first_name, last_name)
VALUES
    (1, 'David', 'Wilson'),
    (2, 'Sarah', 'Anderson'),
    (3, 'James', 'Martinez');


INSERT INTO teacher_salaries (salary_id, teacher_id, amount, payment_date)
VALUES
    (1, 1, 2500.00, '2024-06-15'),
    (2, 2, 2800.00, '2024-06-15'),
    (3, 3, 2700.00, '2024-06-15');


INSERT INTO subjects (subject_id, name)
VALUES
    (1, 'Mathematics'),
    (2, 'Physics'),
    (3, 'History');


INSERT INTO group_subjects (group_subject_id, group_id, subject_id, teacher_id)
VALUES
    (1, 1, 1, 1),
    (2, 2, 2, 2),
    (3, 3, 3, 3),
    (4, 1, 2, 1),
    (5, 2, 3, 2),
    (6, 3, 1, 3);


INSERT INTO group_subject_schedule (group_subject_id, assignment_id)
VALUES
    (1, 1),
    (2, 2),
    (3, 3),
    (4, 4),
    (5, 5),
    (6, 6);
