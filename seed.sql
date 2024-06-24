DELETE FROM group_subject_schedule;
DELETE FROM group_subjects;
DELETE FROM subjects;
DELETE FROM teacher_salaries;
DELETE FROM teachers;
DELETE FROM student_courses;
DELETE FROM students;
DELETE FROM groups;
DELETE FROM course_schedule;
DELETE FROM courses;
DELETE FROM room_assignments;
DELETE FROM rooms;

INSERT INTO rooms (name) VALUES ('K204');
INSERT INTO rooms (name) VALUES ('K205');
INSERT INTO rooms (name) VALUES ('K206');
INSERT INTO rooms (name) VALUES ('K207');
INSERT INTO rooms (name) VALUES ('K305');
INSERT INTO rooms (name) VALUES ('K306');
INSERT INTO rooms (name) VALUES ('K307');
INSERT INTO rooms (name) VALUES ('K409');
INSERT INTO rooms (name) VALUES ('K410');

INSERT INTO room_assignments (room_id, start_time, end_time) VALUES (2, '2024-02-01T08:00:00.000Z', '2024-02-01T09:30:00.000Z');
INSERT INTO room_assignments (room_id, start_time, end_time) VALUES (3, '2024-02-01T08:00:00.000Z', '2024-02-01T08:45:00.000Z');
INSERT INTO room_assignments (room_id, start_time, end_time) VALUES (4, '2024-02-01T08:00:00.000Z', '2024-02-01T08:45:00.000Z');
INSERT INTO room_assignments (room_id, start_time, end_time) VALUES (6, '2024-02-01T08:00:00.000Z', '2024-02-01T08:45:00.000Z');
INSERT INTO room_assignments (room_id, start_time, end_time) VALUES (7, '2024-02-01T08:00:00.000Z', '2024-02-01T09:30:00.000Z');
INSERT INTO room_assignments (room_id, start_time, end_time) VALUES (8, '2024-02-01T08:00:00.000Z', '2024-02-01T09:30:00.000Z');
INSERT INTO room_assignments (room_id, start_time, end_time) VALUES (9, '2024-02-01T08:00:00.000Z', '2024-02-01T09:30:00.000Z');
INSERT INTO room_assignments (room_id, start_time, end_time) VALUES (5, '2024-02-01T08:15:00.000Z', '2024-02-01T09:00:00.000Z');
INSERT INTO room_assignments (room_id, start_time, end_time) VALUES (3, '2024-02-01T08:45:00.000Z', '2024-02-01T10:15:00.000Z');
INSERT INTO room_assignments (room_id, start_time, end_time) VALUES (4, '2024-02-01T08:45:00.000Z', '2024-02-01T10:15:00.000Z');
INSERT INTO room_assignments (room_id, start_time, end_time) VALUES (6, '2024-02-01T08:45:00.000Z', '2024-02-01T09:30:00.000Z');
INSERT INTO room_assignments (room_id, start_time, end_time) VALUES (5, '2024-02-01T09:00:00.000Z', '2024-02-01T10:30:00.000Z');
INSERT INTO room_assignments (room_id, start_time, end_time) VALUES (1, '2024-02-01T09:30:00.000Z', '2024-02-01T11:00:00.000Z');
INSERT INTO room_assignments (room_id, start_time, end_time) VALUES (2, '2024-02-01T09:30:00.000Z', '2024-02-01T10:15:00.000Z');
INSERT INTO room_assignments (room_id, start_time, end_time) VALUES (6, '2024-02-01T09:30:00.000Z', '2024-02-01T10:15:00.000Z');
INSERT INTO room_assignments (room_id, start_time, end_time) VALUES (7, '2024-02-01T09:30:00.000Z', '2024-02-01T10:15:00.000Z');
INSERT INTO room_assignments (room_id, start_time, end_time) VALUES (8, '2024-02-01T09:30:00.000Z', '2024-02-01T11:00:00.000Z');
INSERT INTO room_assignments (room_id, start_time, end_time) VALUES (2, '2024-02-01T10:15:00.000Z', '2024-02-01T11:00:00.000Z');
INSERT INTO room_assignments (room_id, start_time, end_time) VALUES (3, '2024-02-01T10:15:00.000Z', '2024-02-01T11:00:00.000Z');
INSERT INTO room_assignments (room_id, start_time, end_time) VALUES (6, '2024-02-01T10:15:00.000Z', '2024-02-01T11:45:00.000Z');
INSERT INTO room_assignments (room_id, start_time, end_time) VALUES (7, '2024-02-01T10:15:00.000Z', '2024-02-01T11:00:00.000Z');
INSERT INTO room_assignments (room_id, start_time, end_time) VALUES (4, '2024-02-01T10:30:00.000Z', '2024-02-01T11:15:00.000Z');
INSERT INTO room_assignments (room_id, start_time, end_time) VALUES (1, '2024-02-01T11:00:00.000Z', '2024-02-01T11:45:00.000Z');
INSERT INTO room_assignments (room_id, start_time, end_time) VALUES (8, '2024-02-01T11:00:00.000Z', '2024-02-01T11:45:00.000Z');
INSERT INTO room_assignments (room_id, start_time, end_time) VALUES (4, '2024-02-01T11:15:00.000Z', '2024-02-01T12:00:00.000Z');
INSERT INTO room_assignments (room_id, start_time, end_time) VALUES (5, '2024-02-01T11:15:00.000Z', '2024-02-01T12:45:00.000Z');
INSERT INTO room_assignments (room_id, start_time, end_time) VALUES (7, '2024-02-01T11:30:00.000Z', '2024-02-01T12:15:00.000Z');
INSERT INTO room_assignments (room_id, start_time, end_time) VALUES (6, '2024-02-01T11:45:00.000Z', '2024-02-01T12:30:00.000Z');
INSERT INTO room_assignments (room_id, start_time, end_time) VALUES (2, '2024-02-01T12:00:00.000Z', '2024-02-01T12:45:00.000Z');
INSERT INTO room_assignments (room_id, start_time, end_time) VALUES (4, '2024-02-01T12:00:00.000Z', '2024-02-01T12:45:00.000Z');
INSERT INTO room_assignments (room_id, start_time, end_time) VALUES (9, '2024-02-01T12:00:00.000Z', '2024-02-01T12:45:00.000Z');
INSERT INTO room_assignments (room_id, start_time, end_time) VALUES (1, '2024-02-01T12:15:00.000Z', '2024-02-01T13:45:00.000Z');
INSERT INTO room_assignments (room_id, start_time, end_time) VALUES (7, '2024-02-01T12:15:00.000Z', '2024-02-01T13:00:00.000Z');
INSERT INTO room_assignments (room_id, start_time, end_time) VALUES (3, '2024-02-01T12:45:00.000Z', '2024-02-01T13:30:00.000Z');
INSERT INTO room_assignments (room_id, start_time, end_time) VALUES (9, '2024-02-01T12:45:00.000Z', '2024-02-01T13:30:00.000Z');
INSERT INTO room_assignments (room_id, start_time, end_time) VALUES (2, '2024-02-01T13:00:00.000Z', '2024-02-01T13:45:00.000Z');
INSERT INTO room_assignments (room_id, start_time, end_time) VALUES (4, '2024-02-01T13:00:00.000Z', '2024-02-01T14:30:00.000Z');
INSERT INTO room_assignments (room_id, start_time, end_time) VALUES (7, '2024-02-01T13:00:00.000Z', '2024-02-01T14:30:00.000Z');
INSERT INTO room_assignments (room_id, start_time, end_time) VALUES (8, '2024-02-01T13:00:00.000Z', '2024-02-01T14:30:00.000Z');
INSERT INTO room_assignments (room_id, start_time, end_time) VALUES (5, '2024-02-01T13:15:00.000Z', '2024-02-01T14:00:00.000Z');
INSERT INTO room_assignments (room_id, start_time, end_time) VALUES (6, '2024-02-01T13:15:00.000Z', '2024-02-01T14:00:00.000Z');
INSERT INTO room_assignments (room_id, start_time, end_time) VALUES (3, '2024-02-01T13:30:00.000Z', '2024-02-01T15:00:00.000Z');
INSERT INTO room_assignments (room_id, start_time, end_time) VALUES (9, '2024-02-01T13:30:00.000Z', '2024-02-01T14:15:00.000Z');
INSERT INTO room_assignments (room_id, start_time, end_time) VALUES (5, '2024-02-01T14:00:00.000Z', '2024-02-01T15:30:00.000Z');
INSERT INTO room_assignments (room_id, start_time, end_time) VALUES (1, '2024-02-01T14:15:00.000Z', '2024-02-01T15:45:00.000Z');
INSERT INTO room_assignments (room_id, start_time, end_time) VALUES (2, '2024-02-01T14:15:00.000Z', '2024-02-01T15:00:00.000Z');
INSERT INTO room_assignments (room_id, start_time, end_time) VALUES (9, '2024-02-01T14:15:00.000Z', '2024-02-01T15:45:00.000Z');
INSERT INTO room_assignments (room_id, start_time, end_time) VALUES (7, '2024-02-01T14:30:00.000Z', '2024-02-01T15:15:00.000Z');
INSERT INTO room_assignments (room_id, start_time, end_time) VALUES (8, '2024-02-01T14:30:00.000Z', '2024-02-01T16:00:00.000Z');
INSERT INTO room_assignments (room_id, start_time, end_time) VALUES (6, '2024-02-01T14:45:00.000Z', '2024-02-01T16:15:00.000Z');
INSERT INTO room_assignments (room_id, start_time, end_time) VALUES (3, '2024-02-01T15:00:00.000Z', '2024-02-01T16:30:00.000Z');
INSERT INTO room_assignments (room_id, start_time, end_time) VALUES (7, '2024-02-01T15:15:00.000Z', '2024-02-01T16:00:00.000Z');
INSERT INTO room_assignments (room_id, start_time, end_time) VALUES (1, '2024-02-01T15:45:00.000Z', '2024-02-01T16:30:00.000Z');
INSERT INTO room_assignments (room_id, start_time, end_time) VALUES (2, '2024-02-01T15:45:00.000Z', '2024-02-01T16:30:00.000Z');
INSERT INTO room_assignments (room_id, start_time, end_time) VALUES (5, '2024-02-01T16:00:00.000Z', '2024-02-01T17:30:00.000Z');
INSERT INTO room_assignments (room_id, start_time, end_time) VALUES (6, '2024-02-01T16:15:00.000Z', '2024-02-01T17:45:00.000Z');
INSERT INTO room_assignments (room_id, start_time, end_time) VALUES (8, '2024-02-01T16:15:00.000Z', '2024-02-01T17:00:00.000Z');
INSERT INTO room_assignments (room_id, start_time, end_time) VALUES (9, '2024-02-01T16:15:00.000Z', '2024-02-01T17:45:00.000Z');
INSERT INTO room_assignments (room_id, start_time, end_time) VALUES (2, '2024-02-01T16:30:00.000Z', '2024-02-01T17:15:00.000Z');
INSERT INTO room_assignments (room_id, start_time, end_time) VALUES (3, '2024-02-01T16:30:00.000Z', '2024-02-01T17:15:00.000Z');
INSERT INTO room_assignments (room_id, start_time, end_time) VALUES (7, '2024-02-01T16:30:00.000Z', '2024-02-01T17:15:00.000Z');
INSERT INTO room_assignments (room_id, start_time, end_time) VALUES (1, '2024-02-01T17:00:00.000Z', '2024-02-01T18:30:00.000Z');
INSERT INTO room_assignments (room_id, start_time, end_time) VALUES (8, '2024-02-01T17:00:00.000Z', '2024-02-01T17:45:00.000Z');
INSERT INTO room_assignments (room_id, start_time, end_time) VALUES (2, '2024-02-01T17:15:00.000Z', '2024-02-01T18:45:00.000Z');
INSERT INTO room_assignments (room_id, start_time, end_time) VALUES (7, '2024-02-01T17:15:00.000Z', '2024-02-01T18:45:00.000Z');
INSERT INTO room_assignments (room_id, start_time, end_time) VALUES (3, '2024-02-01T17:30:00.000Z', '2024-02-01T19:00:00.000Z');
INSERT INTO room_assignments (room_id, start_time, end_time) VALUES (5, '2024-02-01T17:30:00.000Z', '2024-02-01T18:15:00.000Z');
INSERT INTO room_assignments (room_id, start_time, end_time) VALUES (8, '2024-02-01T17:45:00.000Z', '2024-02-01T19:15:00.000Z');
INSERT INTO room_assignments (room_id, start_time, end_time) VALUES (9, '2024-02-01T17:45:00.000Z', '2024-02-01T19:15:00.000Z');

INSERT INTO courses (name, start_date, end_date, price) VALUES ('Mathematics', '2024-02-01T00:00:00.000Z', '2024-03-02T00:00:00.000Z', 247);
INSERT INTO courses (name, start_date, end_date, price) VALUES ('Physics', '2024-02-01T00:00:00.000Z', '2024-03-02T00:00:00.000Z', 778);
INSERT INTO courses (name, start_date, end_date, price) VALUES ('Chemistry', '2024-02-01T00:00:00.000Z', '2024-03-02T00:00:00.000Z', 442);
INSERT INTO courses (name, start_date, end_date, price) VALUES ('Biology', '2024-02-01T00:00:00.000Z', '2024-03-02T00:00:00.000Z', 606);
INSERT INTO courses (name, start_date, end_date, price) VALUES ('History', '2024-02-01T00:00:00.000Z', '2024-03-02T00:00:00.000Z', 748);
INSERT INTO courses (name, start_date, end_date, price) VALUES ('Geography', '2024-02-01T00:00:00.000Z', '2024-03-02T00:00:00.000Z', 590);
INSERT INTO courses (name, start_date, end_date, price) VALUES ('English', '2024-02-01T00:00:00.000Z', '2024-03-02T00:00:00.000Z', 809);
INSERT INTO courses (name, start_date, end_date, price) VALUES ('French', '2024-02-01T00:00:00.000Z', '2024-03-02T00:00:00.000Z', 471);
INSERT INTO courses (name, start_date, end_date, price) VALUES ('Spanish', '2024-02-01T00:00:00.000Z', '2024-03-02T00:00:00.000Z', 778);
INSERT INTO courses (name, start_date, end_date, price) VALUES ('German', '2024-02-01T00:00:00.000Z', '2024-03-02T00:00:00.000Z', 244);

INSERT INTO course_schedule (course_id, assignment_id) VALUES (7, 7);
INSERT INTO course_schedule (course_id, assignment_id) VALUES (6, 45);
INSERT INTO course_schedule (course_id, assignment_id) VALUES (2, 55);
INSERT INTO course_schedule (course_id, assignment_id) VALUES (2, 63);
INSERT INTO course_schedule (course_id, assignment_id) VALUES (6, 17);
INSERT INTO course_schedule (course_id, assignment_id) VALUES (10, 25);
INSERT INTO course_schedule (course_id, assignment_id) VALUES (2, 31);
INSERT INTO course_schedule (course_id, assignment_id) VALUES (1, 1);
INSERT INTO course_schedule (course_id, assignment_id) VALUES (5, 56);
INSERT INTO course_schedule (course_id, assignment_id) VALUES (1, 40);
INSERT INTO course_schedule (course_id, assignment_id) VALUES (9, 32);
INSERT INTO course_schedule (course_id, assignment_id) VALUES (3, 3);
INSERT INTO course_schedule (course_id, assignment_id) VALUES (2, 29);
INSERT INTO course_schedule (course_id, assignment_id) VALUES (4, 50);
INSERT INTO course_schedule (course_id, assignment_id) VALUES (2, 58);
INSERT INTO course_schedule (course_id, assignment_id) VALUES (7, 20);
INSERT INTO course_schedule (course_id, assignment_id) VALUES (3, 34);
INSERT INTO course_schedule (course_id, assignment_id) VALUES (2, 4);
INSERT INTO course_schedule (course_id, assignment_id) VALUES (6, 67);
INSERT INTO course_schedule (course_id, assignment_id) VALUES (10, 59);
INSERT INTO course_schedule (course_id, assignment_id) VALUES (2, 43);
INSERT INTO course_schedule (course_id, assignment_id) VALUES (5, 21);
INSERT INTO course_schedule (course_id, assignment_id) VALUES (1, 35);
INSERT INTO course_schedule (course_id, assignment_id) VALUES (4, 44);
INSERT INTO course_schedule (course_id, assignment_id) VALUES (7, 68);
INSERT INTO course_schedule (course_id, assignment_id) VALUES (8, 6);
INSERT INTO course_schedule (course_id, assignment_id) VALUES (10, 15);
INSERT INTO course_schedule (course_id, assignment_id) VALUES (7, 54);
INSERT INTO course_schedule (course_id, assignment_id) VALUES (3, 23);
INSERT INTO course_schedule (course_id, assignment_id) VALUES (2, 62);
INSERT INTO course_schedule (course_id, assignment_id) VALUES (4, 69);

INSERT INTO groups (name) VALUES ('A');
INSERT INTO groups (name) VALUES ('B');
INSERT INTO groups (name) VALUES ('C');
INSERT INTO groups (name) VALUES ('D');

INSERT INTO students (first_name, last_name, group_id) VALUES ('Kyle', 'Rippin', 1);
INSERT INTO students (first_name, last_name, group_id) VALUES ('Darrin', 'Rau', 2);
INSERT INTO students (first_name, last_name, group_id) VALUES ('Houston', 'Graham', 4);
INSERT INTO students (first_name, last_name, group_id) VALUES ('Dovie', 'Ward', 3);
INSERT INTO students (first_name, last_name, group_id) VALUES ('Marjorie', 'Predovic', 3);
INSERT INTO students (first_name, last_name, group_id) VALUES ('Janis', 'Buckridge', 2);
INSERT INTO students (first_name, last_name, group_id) VALUES ('Judson', 'Hoppe-Crona', 1);
INSERT INTO students (first_name, last_name, group_id) VALUES ('Della', 'McGlynn', 1);
INSERT INTO students (first_name, last_name, group_id) VALUES ('Howard', 'McCullough', 3);
INSERT INTO students (first_name, last_name, group_id) VALUES ('Connie', 'Pfannerstill', 4);
INSERT INTO students (first_name, last_name, group_id) VALUES ('Keira', 'Ernser', 1);
INSERT INTO students (first_name, last_name, group_id) VALUES ('Euna', 'Lebsack-Breitenberg', 4);
INSERT INTO students (first_name, last_name, group_id) VALUES ('Asia', 'Deckow', 2);
INSERT INTO students (first_name, last_name, group_id) VALUES ('Marilyne', 'Prosacco', 1);
INSERT INTO students (first_name, last_name, group_id) VALUES ('Cyril', 'Homenick', 3);
INSERT INTO students (first_name, last_name, group_id) VALUES ('Willard', 'Hahn', 4);
INSERT INTO students (first_name, last_name, group_id) VALUES ('Jesus', 'Rippin', 1);
INSERT INTO students (first_name, last_name, group_id) VALUES ('Josianne', 'Collins', 4);
INSERT INTO students (first_name, last_name, group_id) VALUES ('Maverick', 'Emard', 2);
INSERT INTO students (first_name, last_name, group_id) VALUES ('Stephan', 'Will', 3);
INSERT INTO students (first_name, last_name, group_id) VALUES ('Carson', 'Parker', 1);
INSERT INTO students (first_name, last_name, group_id) VALUES ('Josue', 'Bergnaum', 3);
INSERT INTO students (first_name, last_name, group_id) VALUES ('Samantha', 'Wolf', 3);
INSERT INTO students (first_name, last_name, group_id) VALUES ('Jordy', 'Schulist', 1);
INSERT INTO students (first_name, last_name, group_id) VALUES ('Cory', 'Hudson', 3);
INSERT INTO students (first_name, last_name, group_id) VALUES ('Mayra', 'Fritsch', 3);
INSERT INTO students (first_name, last_name, group_id) VALUES ('Wilson', 'Botsford', 2);
INSERT INTO students (first_name, last_name, group_id) VALUES ('Dannie', 'Romaguera', 4);
INSERT INTO students (first_name, last_name, group_id) VALUES ('Viva', 'Wisozk', 2);
INSERT INTO students (first_name, last_name, group_id) VALUES ('Maudie', 'Kuhic', 4);
INSERT INTO students (first_name, last_name, group_id) VALUES ('Mathew', 'Bashirian', 3);
INSERT INTO students (first_name, last_name, group_id) VALUES ('Guiseppe', 'Schumm', 3);
INSERT INTO students (first_name, last_name, group_id) VALUES ('Antonina', 'Herzog', 4);
INSERT INTO students (first_name, last_name, group_id) VALUES ('Irving', 'Hudson', 4);
INSERT INTO students (first_name, last_name, group_id) VALUES ('Joyce', 'Conroy', 3);
INSERT INTO students (first_name, last_name, group_id) VALUES ('Brando', 'Hamill', 4);
INSERT INTO students (first_name, last_name, group_id) VALUES ('Breanne', 'Emard', 1);
INSERT INTO students (first_name, last_name, group_id) VALUES ('Tomas', 'Grady', 2);
INSERT INTO students (first_name, last_name, group_id) VALUES ('Vicenta', 'Ortiz', 1);
INSERT INTO students (first_name, last_name, group_id) VALUES ('Ilene', 'Corwin', 3);
INSERT INTO students (first_name, last_name, group_id) VALUES ('Stephany', 'Hackett', 3);
INSERT INTO students (first_name, last_name, group_id) VALUES ('Cleora', 'Nader', 2);
INSERT INTO students (first_name, last_name, group_id) VALUES ('Davin', 'Schumm', 4);
INSERT INTO students (first_name, last_name, group_id) VALUES ('Elwyn', 'O''Hara', 4);
INSERT INTO students (first_name, last_name, group_id) VALUES ('Porter', 'Greenholt', 3);
INSERT INTO students (first_name, last_name, group_id) VALUES ('Jeanie', 'VonRueden', 3);
INSERT INTO students (first_name, last_name, group_id) VALUES ('Holden', 'Ullrich', 4);
INSERT INTO students (first_name, last_name, group_id) VALUES ('Bessie', 'Sipes-Keeling', 2);
INSERT INTO students (first_name, last_name, group_id) VALUES ('Bobbie', 'Nolan', 4);
INSERT INTO students (first_name, last_name, group_id) VALUES ('Alice', 'Kerluke', 3);
INSERT INTO students (first_name, last_name, group_id) VALUES ('Joanne', 'Stokes', 4);
INSERT INTO students (first_name, last_name, group_id) VALUES ('Stacey', 'Weimann', 1);
INSERT INTO students (first_name, last_name, group_id) VALUES ('Ulices', 'Bergstrom', 1);
INSERT INTO students (first_name, last_name, group_id) VALUES ('Al', 'Kulas', 2);
INSERT INTO students (first_name, last_name, group_id) VALUES ('Nichole', 'Marquardt', 4);
INSERT INTO students (first_name, last_name, group_id) VALUES ('Miles', 'Reynolds', 3);
INSERT INTO students (first_name, last_name, group_id) VALUES ('Savanna', 'Schroeder', 4);
INSERT INTO students (first_name, last_name, group_id) VALUES ('Tessie', 'Ledner', 1);
INSERT INTO students (first_name, last_name, group_id) VALUES ('Kristofer', 'Pagac-Lynch', 3);
INSERT INTO students (first_name, last_name, group_id) VALUES ('Emmett', 'Turner', 3);
INSERT INTO students (first_name, last_name, group_id) VALUES ('Dejon', 'Stanton', 4);
INSERT INTO students (first_name, last_name, group_id) VALUES ('Amira', 'Huels', 4);
INSERT INTO students (first_name, last_name, group_id) VALUES ('Karina', 'Osinski', 4);
INSERT INTO students (first_name, last_name, group_id) VALUES ('Garrick', 'Brekke', 2);
INSERT INTO students (first_name, last_name, group_id) VALUES ('Marvin', 'Frami', 3);
INSERT INTO students (first_name, last_name, group_id) VALUES ('Dejah', 'Von', 1);
INSERT INTO students (first_name, last_name, group_id) VALUES ('Cleve', 'Pfannerstill', 1);
INSERT INTO students (first_name, last_name, group_id) VALUES ('Bridgette', 'Tromp', 2);
INSERT INTO students (first_name, last_name, group_id) VALUES ('Maybell', 'Schulist', 1);
INSERT INTO students (first_name, last_name, group_id) VALUES ('Jackson', 'Purdy', 2);
INSERT INTO students (first_name, last_name, group_id) VALUES ('Toy', 'Hudson', 4);
INSERT INTO students (first_name, last_name, group_id) VALUES ('Audreanne', 'Boyle', 3);
INSERT INTO students (first_name, last_name, group_id) VALUES ('Pedro', 'Will', 1);
INSERT INTO students (first_name, last_name, group_id) VALUES ('Esther', 'Oberbrunner', 1);
INSERT INTO students (first_name, last_name, group_id) VALUES ('Horacio', 'Thiel', 2);
INSERT INTO students (first_name, last_name, group_id) VALUES ('Lottie', 'Tillman', 3);
INSERT INTO students (first_name, last_name, group_id) VALUES ('Giovanny', 'Morar', 2);
INSERT INTO students (first_name, last_name, group_id) VALUES ('Kyla', 'Reilly', 2);
INSERT INTO students (first_name, last_name, group_id) VALUES ('Corene', 'Turcotte', 3);
INSERT INTO students (first_name, last_name, group_id) VALUES ('Noble', 'Olson-Davis', 4);
INSERT INTO students (first_name, last_name, group_id) VALUES ('Kayden', 'Hirthe', 2);
INSERT INTO students (first_name, last_name, group_id) VALUES ('Claudia', 'Mayert', 3);
INSERT INTO students (first_name, last_name, group_id) VALUES ('Marietta', 'Hudson', 4);
INSERT INTO students (first_name, last_name, group_id) VALUES ('Allen', 'Kilback', 3);
INSERT INTO students (first_name, last_name, group_id) VALUES ('Briana', 'Ferry', 1);
INSERT INTO students (first_name, last_name, group_id) VALUES ('Rosie', 'Mann', 4);
INSERT INTO students (first_name, last_name, group_id) VALUES ('Marquise', 'Konopelski', 1);
INSERT INTO students (first_name, last_name, group_id) VALUES ('Gina', 'Dickens', 2);
INSERT INTO students (first_name, last_name, group_id) VALUES ('Jody', 'Parker', 3);
INSERT INTO students (first_name, last_name, group_id) VALUES ('Rowland', 'Turner', 1);
INSERT INTO students (first_name, last_name, group_id) VALUES ('Emmy', 'Carroll', 3);
INSERT INTO students (first_name, last_name, group_id) VALUES ('Julianne', 'Cronin', 1);
INSERT INTO students (first_name, last_name, group_id) VALUES ('Henri', 'Huels', 4);
INSERT INTO students (first_name, last_name, group_id) VALUES ('Elna', 'Wolff', 1);
INSERT INTO students (first_name, last_name, group_id) VALUES ('Araceli', 'Wunsch', 3);
INSERT INTO students (first_name, last_name, group_id) VALUES ('Lillie', 'Brakus-Strosin', 1);
INSERT INTO students (first_name, last_name, group_id) VALUES ('Dominic', 'Orn', 4);
INSERT INTO students (first_name, last_name, group_id) VALUES ('Nelson', 'Little', 4);
INSERT INTO students (first_name, last_name, group_id) VALUES ('Joanne', 'Kunde-Orn', 4);
INSERT INTO students (first_name, last_name, group_id) VALUES ('Jamel', 'Botsford', 1);

INSERT INTO student_courses (student_id, course_id, payment_date) VALUES (1, 6, '2024-02-01T00:00:00.000Z');
INSERT INTO student_courses (student_id, course_id, payment_date) VALUES (2, 8, '2024-02-01T00:00:00.000Z');
INSERT INTO student_courses (student_id, course_id, payment_date) VALUES (3, 7, '2024-02-01T00:00:00.000Z');
INSERT INTO student_courses (student_id, course_id, payment_date) VALUES (4, 1, '2024-02-01T00:00:00.000Z');
INSERT INTO student_courses (student_id, course_id, payment_date) VALUES (10, 8, '2024-02-01T00:00:00.000Z');
INSERT INTO student_courses (student_id, course_id, payment_date) VALUES (14, 1, '2024-02-01T00:00:00.000Z');
INSERT INTO student_courses (student_id, course_id, payment_date) VALUES (15, 5, '2024-02-01T00:00:00.000Z');
INSERT INTO student_courses (student_id, course_id, payment_date) VALUES (16, 10, '2024-02-01T00:00:00.000Z');
INSERT INTO student_courses (student_id, course_id, payment_date) VALUES (17, 9, '2024-02-01T00:00:00.000Z');
INSERT INTO student_courses (student_id, course_id, payment_date) VALUES (18, 6, '2024-02-01T00:00:00.000Z');
INSERT INTO student_courses (student_id, course_id, payment_date) VALUES (20, 9, '2024-02-01T00:00:00.000Z');
INSERT INTO student_courses (student_id, course_id, payment_date) VALUES (22, 9, '2024-02-01T00:00:00.000Z');
INSERT INTO student_courses (student_id, course_id, payment_date) VALUES (23, 6, '2024-02-01T00:00:00.000Z');
INSERT INTO student_courses (student_id, course_id, payment_date) VALUES (24, 9, '2024-02-01T00:00:00.000Z');
INSERT INTO student_courses (student_id, course_id, payment_date) VALUES (26, 10, '2024-02-01T00:00:00.000Z');
INSERT INTO student_courses (student_id, course_id, payment_date) VALUES (27, 10, '2024-02-01T00:00:00.000Z');
INSERT INTO student_courses (student_id, course_id, payment_date) VALUES (28, 1, '2024-02-01T00:00:00.000Z');
INSERT INTO student_courses (student_id, course_id, payment_date) VALUES (30, 8, '2024-02-01T00:00:00.000Z');
INSERT INTO student_courses (student_id, course_id, payment_date) VALUES (33, 10, '2024-02-01T00:00:00.000Z');
INSERT INTO student_courses (student_id, course_id, payment_date) VALUES (34, 6, '2024-02-01T00:00:00.000Z');
INSERT INTO student_courses (student_id, course_id, payment_date) VALUES (38, 9, '2024-02-01T00:00:00.000Z');
INSERT INTO student_courses (student_id, course_id, payment_date) VALUES (41, 7, '2024-02-01T00:00:00.000Z');
INSERT INTO student_courses (student_id, course_id, payment_date) VALUES (43, 6, '2024-02-01T00:00:00.000Z');
INSERT INTO student_courses (student_id, course_id, payment_date) VALUES (44, 4, '2024-02-01T00:00:00.000Z');
INSERT INTO student_courses (student_id, course_id, payment_date) VALUES (49, 6, '2024-02-01T00:00:00.000Z');
INSERT INTO student_courses (student_id, course_id, payment_date) VALUES (50, 9, '2024-02-01T00:00:00.000Z');
INSERT INTO student_courses (student_id, course_id, payment_date) VALUES (52, 10, '2024-02-01T00:00:00.000Z');
INSERT INTO student_courses (student_id, course_id, payment_date) VALUES (53, 3, '2024-02-01T00:00:00.000Z');
INSERT INTO student_courses (student_id, course_id, payment_date) VALUES (55, 5, '2024-02-01T00:00:00.000Z');
INSERT INTO student_courses (student_id, course_id, payment_date) VALUES (60, 1, '2024-02-01T00:00:00.000Z');
INSERT INTO student_courses (student_id, course_id, payment_date) VALUES (63, 1, '2024-02-01T00:00:00.000Z');
INSERT INTO student_courses (student_id, course_id, payment_date) VALUES (71, 1, '2024-02-01T00:00:00.000Z');
INSERT INTO student_courses (student_id, course_id, payment_date) VALUES (74, 6, '2024-02-01T00:00:00.000Z');
INSERT INTO student_courses (student_id, course_id, payment_date) VALUES (75, 5, '2024-02-01T00:00:00.000Z');
INSERT INTO student_courses (student_id, course_id, payment_date) VALUES (76, 5, '2024-02-01T00:00:00.000Z');
INSERT INTO student_courses (student_id, course_id, payment_date) VALUES (79, 2, '2024-02-01T00:00:00.000Z');
INSERT INTO student_courses (student_id, course_id, payment_date) VALUES (80, 8, '2024-02-01T00:00:00.000Z');
INSERT INTO student_courses (student_id, course_id, payment_date) VALUES (82, 8, '2024-02-01T00:00:00.000Z');
INSERT INTO student_courses (student_id, course_id, payment_date) VALUES (84, 9, '2024-02-01T00:00:00.000Z');
INSERT INTO student_courses (student_id, course_id, payment_date) VALUES (86, 6, '2024-02-01T00:00:00.000Z');
INSERT INTO student_courses (student_id, course_id, payment_date) VALUES (87, 1, '2024-02-01T00:00:00.000Z');
INSERT INTO student_courses (student_id, course_id, payment_date) VALUES (90, 4, '2024-02-01T00:00:00.000Z');
INSERT INTO student_courses (student_id, course_id, payment_date) VALUES (92, 9, '2024-02-01T00:00:00.000Z');
INSERT INTO student_courses (student_id, course_id, payment_date) VALUES (93, 10, '2024-02-01T00:00:00.000Z');
INSERT INTO student_courses (student_id, course_id, payment_date) VALUES (94, 9, '2024-02-01T00:00:00.000Z');
INSERT INTO student_courses (student_id, course_id, payment_date) VALUES (95, 5, '2024-02-01T00:00:00.000Z');
INSERT INTO student_courses (student_id, course_id, payment_date) VALUES (98, 4, '2024-02-01T00:00:00.000Z');
INSERT INTO student_courses (student_id, course_id, payment_date) VALUES (99, 3, '2024-02-01T00:00:00.000Z');
INSERT INTO student_courses (student_id, course_id, payment_date) VALUES (100, 2, '2024-02-01T00:00:00.000Z');

INSERT INTO teachers (first_name, last_name) VALUES ('Alexys', 'Casper');
INSERT INTO teachers (first_name, last_name) VALUES ('Jeramy', 'Franey');
INSERT INTO teachers (first_name, last_name) VALUES ('Kellen', 'Kshlerin');
INSERT INTO teachers (first_name, last_name) VALUES ('Vivienne', 'West');
INSERT INTO teachers (first_name, last_name) VALUES ('Alexis', 'MacGyver');
INSERT INTO teachers (first_name, last_name) VALUES ('Jessika', 'Walker');
INSERT INTO teachers (first_name, last_name) VALUES ('Randy', 'Pfeffer');
INSERT INTO teachers (first_name, last_name) VALUES ('Michaela', 'Erdman-Larson');
INSERT INTO teachers (first_name, last_name) VALUES ('Mckayla', 'Grady');
INSERT INTO teachers (first_name, last_name) VALUES ('Nathanael', 'Corwin');

INSERT INTO teacher_salaries (teacher_id, amount, payment_date) VALUES (1, 4485, '2024-02-22T17:48:17.971Z');
INSERT INTO teacher_salaries (teacher_id, amount, payment_date) VALUES (2, 1056, '2024-02-27T04:20:53.127Z');
INSERT INTO teacher_salaries (teacher_id, amount, payment_date) VALUES (3, 2063, '2024-02-29T07:29:17.364Z');
INSERT INTO teacher_salaries (teacher_id, amount, payment_date) VALUES (4, 1592, '2024-02-18T15:11:47.264Z');
INSERT INTO teacher_salaries (teacher_id, amount, payment_date) VALUES (5, 2498, '2024-02-20T15:53:33.666Z');
INSERT INTO teacher_salaries (teacher_id, amount, payment_date) VALUES (6, 4802, '2024-02-15T02:55:36.837Z');
INSERT INTO teacher_salaries (teacher_id, amount, payment_date) VALUES (7, 1671, '2024-02-19T07:13:35.428Z');
INSERT INTO teacher_salaries (teacher_id, amount, payment_date) VALUES (8, 1275, '2024-02-26T19:45:18.617Z');
INSERT INTO teacher_salaries (teacher_id, amount, payment_date) VALUES (9, 4615, '2024-02-14T18:28:05.341Z');
INSERT INTO teacher_salaries (teacher_id, amount, payment_date) VALUES (10, 1719, '2024-02-28T13:00:15.983Z');

INSERT INTO subjects (name) VALUES ('Mathematics');
INSERT INTO subjects (name) VALUES ('Physics');
INSERT INTO subjects (name) VALUES ('Chemistry');
INSERT INTO subjects (name) VALUES ('Biology');
INSERT INTO subjects (name) VALUES ('History');
INSERT INTO subjects (name) VALUES ('Geography');
INSERT INTO subjects (name) VALUES ('English');
INSERT INTO subjects (name) VALUES ('French');
INSERT INTO subjects (name) VALUES ('Spanish');
INSERT INTO subjects (name) VALUES ('German');

INSERT INTO group_subjects (group_id, subject_id, teacher_id) VALUES (1, 1, 10);
INSERT INTO group_subjects (group_id, subject_id, teacher_id) VALUES (1, 2, 10);
INSERT INTO group_subjects (group_id, subject_id, teacher_id) VALUES (1, 3, 6);
INSERT INTO group_subjects (group_id, subject_id, teacher_id) VALUES (1, 4, 5);
INSERT INTO group_subjects (group_id, subject_id, teacher_id) VALUES (1, 5, 4);
INSERT INTO group_subjects (group_id, subject_id, teacher_id) VALUES (1, 6, 1);
INSERT INTO group_subjects (group_id, subject_id, teacher_id) VALUES (1, 7, 10);
INSERT INTO group_subjects (group_id, subject_id, teacher_id) VALUES (1, 8, 10);
INSERT INTO group_subjects (group_id, subject_id, teacher_id) VALUES (1, 9, 3);
INSERT INTO group_subjects (group_id, subject_id, teacher_id) VALUES (1, 10, 3);
INSERT INTO group_subjects (group_id, subject_id, teacher_id) VALUES (2, 1, 2);
INSERT INTO group_subjects (group_id, subject_id, teacher_id) VALUES (2, 2, 3);
INSERT INTO group_subjects (group_id, subject_id, teacher_id) VALUES (2, 3, 4);
INSERT INTO group_subjects (group_id, subject_id, teacher_id) VALUES (2, 4, 8);
INSERT INTO group_subjects (group_id, subject_id, teacher_id) VALUES (2, 5, 5);
INSERT INTO group_subjects (group_id, subject_id, teacher_id) VALUES (2, 6, 2);
INSERT INTO group_subjects (group_id, subject_id, teacher_id) VALUES (2, 7, 8);
INSERT INTO group_subjects (group_id, subject_id, teacher_id) VALUES (2, 8, 9);
INSERT INTO group_subjects (group_id, subject_id, teacher_id) VALUES (2, 9, 8);
INSERT INTO group_subjects (group_id, subject_id, teacher_id) VALUES (2, 10, 2);
INSERT INTO group_subjects (group_id, subject_id, teacher_id) VALUES (3, 1, 8);
INSERT INTO group_subjects (group_id, subject_id, teacher_id) VALUES (3, 2, 4);
INSERT INTO group_subjects (group_id, subject_id, teacher_id) VALUES (3, 3, 1);
INSERT INTO group_subjects (group_id, subject_id, teacher_id) VALUES (3, 4, 6);
INSERT INTO group_subjects (group_id, subject_id, teacher_id) VALUES (3, 5, 8);
INSERT INTO group_subjects (group_id, subject_id, teacher_id) VALUES (3, 6, 10);
INSERT INTO group_subjects (group_id, subject_id, teacher_id) VALUES (3, 7, 9);
INSERT INTO group_subjects (group_id, subject_id, teacher_id) VALUES (3, 8, 7);
INSERT INTO group_subjects (group_id, subject_id, teacher_id) VALUES (3, 9, 6);
INSERT INTO group_subjects (group_id, subject_id, teacher_id) VALUES (3, 10, 2);
INSERT INTO group_subjects (group_id, subject_id, teacher_id) VALUES (4, 1, 2);
INSERT INTO group_subjects (group_id, subject_id, teacher_id) VALUES (4, 2, 6);
INSERT INTO group_subjects (group_id, subject_id, teacher_id) VALUES (4, 3, 3);
INSERT INTO group_subjects (group_id, subject_id, teacher_id) VALUES (4, 4, 2);
INSERT INTO group_subjects (group_id, subject_id, teacher_id) VALUES (4, 5, 3);
INSERT INTO group_subjects (group_id, subject_id, teacher_id) VALUES (4, 6, 6);
INSERT INTO group_subjects (group_id, subject_id, teacher_id) VALUES (4, 7, 6);
INSERT INTO group_subjects (group_id, subject_id, teacher_id) VALUES (4, 8, 6);
INSERT INTO group_subjects (group_id, subject_id, teacher_id) VALUES (4, 9, 3);
INSERT INTO group_subjects (group_id, subject_id, teacher_id) VALUES (4, 10, 3);

INSERT INTO group_subject_schedule (group_subject_id, assignment_id) VALUES (19, 16);
INSERT INTO group_subject_schedule (group_subject_id, assignment_id) VALUES (24, 24);
INSERT INTO group_subject_schedule (group_subject_id, assignment_id) VALUES (40, 37);
INSERT INTO group_subject_schedule (group_subject_id, assignment_id) VALUES (6, 30);
INSERT INTO group_subject_schedule (group_subject_id, assignment_id) VALUES (16, 38);
INSERT INTO group_subject_schedule (group_subject_id, assignment_id) VALUES (14, 8);
INSERT INTO group_subject_schedule (group_subject_id, assignment_id) VALUES (38, 39);
INSERT INTO group_subject_schedule (group_subject_id, assignment_id) VALUES (30, 46);
INSERT INTO group_subject_schedule (group_subject_id, assignment_id) VALUES (33, 9);
INSERT INTO group_subject_schedule (group_subject_id, assignment_id) VALUES (20, 18);
INSERT INTO group_subject_schedule (group_subject_id, assignment_id) VALUES (38, 47);
INSERT INTO group_subject_schedule (group_subject_id, assignment_id) VALUES (32, 26);
INSERT INTO group_subject_schedule (group_subject_id, assignment_id) VALUES (39, 2);
INSERT INTO group_subject_schedule (group_subject_id, assignment_id) VALUES (13, 57);
INSERT INTO group_subject_schedule (group_subject_id, assignment_id) VALUES (2, 27);
INSERT INTO group_subject_schedule (group_subject_id, assignment_id) VALUES (39, 48);
INSERT INTO group_subject_schedule (group_subject_id, assignment_id) VALUES (5, 41);
INSERT INTO group_subject_schedule (group_subject_id, assignment_id) VALUES (22, 10);
INSERT INTO group_subject_schedule (group_subject_id, assignment_id) VALUES (17, 28);
INSERT INTO group_subject_schedule (group_subject_id, assignment_id) VALUES (4, 64);
INSERT INTO group_subject_schedule (group_subject_id, assignment_id) VALUES (38, 49);
INSERT INTO group_subject_schedule (group_subject_id, assignment_id) VALUES (36, 19);
INSERT INTO group_subject_schedule (group_subject_id, assignment_id) VALUES (18, 65);
INSERT INTO group_subject_schedule (group_subject_id, assignment_id) VALUES (13, 11);
INSERT INTO group_subject_schedule (group_subject_id, assignment_id) VALUES (11, 33);
INSERT INTO group_subject_schedule (group_subject_id, assignment_id) VALUES (24, 42);
INSERT INTO group_subject_schedule (group_subject_id, assignment_id) VALUES (24, 66);
INSERT INTO group_subject_schedule (group_subject_id, assignment_id) VALUES (36, 12);
INSERT INTO group_subject_schedule (group_subject_id, assignment_id) VALUES (23, 51);
INSERT INTO group_subject_schedule (group_subject_id, assignment_id) VALUES (37, 52);
INSERT INTO group_subject_schedule (group_subject_id, assignment_id) VALUES (40, 5);
INSERT INTO group_subject_schedule (group_subject_id, assignment_id) VALUES (10, 13);
INSERT INTO group_subject_schedule (group_subject_id, assignment_id) VALUES (17, 60);
INSERT INTO group_subject_schedule (group_subject_id, assignment_id) VALUES (12, 14);
INSERT INTO group_subject_schedule (group_subject_id, assignment_id) VALUES (15, 22);
INSERT INTO group_subject_schedule (group_subject_id, assignment_id) VALUES (25, 53);
INSERT INTO group_subject_schedule (group_subject_id, assignment_id) VALUES (38, 61);
INSERT INTO group_subject_schedule (group_subject_id, assignment_id) VALUES (25, 36);