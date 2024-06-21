CREATE TABLE rooms (
    room_id INT IDENTITY PRIMARY KEY,
    name VARCHAR(64) NOT NULL UNIQUE,
);

CREATE TABLE room_assignments (
    assignment_id INT IDENTITY PRIMARY KEY,
    room_id INT NOT NULL,
    start_time DATETIME NOT NULL,
    end_time DATETIME NOT NULL,
    FOREIGN KEY (room_id) REFERENCES rooms(room_id),
);

CREATE TABLE courses (
    course_id INT IDENTITY PRIMARY KEY,
    name VARCHAR(64) NOT NULL UNIQUE,
    start_date DATE NOT NULL,
    end_date DATE NOT NULL,
    price DECIMAL(10,2) NOT NULL,
);

CREATE TABLE courses_schedule (
    course_id INT NOT NULL,
    assignment_id INT NOT NULL,
    FOREIGN KEY (course_id) REFERENCES courses(course_id),
    FOREIGN KEY (assignment_id) REFERENCES room_assignments(assignment_id),
);

CREATE TABLE groups (
    group_id INT IDENTITY PRIMARY KEY,
    name VARCHAR(64) NOT NULL UNIQUE,
);

CREATE TABLE students (
    student_id INT IDENTITY PRIMARY KEY,
    first_name VARCHAR(64) NOT NULL,
    last_name VARCHAR(64) NOT NULL,
    group_id INT NOT NULL,
    FOREIGN KEY (group_id) REFERENCES groups(group_id),
);

CREATE TABLE student_courses (
    student_id INT NOT NULL UNIQUE,
    course_id INT NOT NULL,
    payment_date DATETIME NOT NULL,
    FOREIGN KEY (student_id) REFERENCES students(student_id),
    FOREIGN KEY (course_id) REFERENCES courses(course_id),
);

CREATE TABLE teachers (
    teacher_id INT IDENTITY PRIMARY KEY,
    first_name VARCHAR(64) NOT NULL,
    last_name VARCHAR(64) NOT NULL,
);

CREATE TABLE teacher_salaries (
    salary_id INT IDENTITY PRIMARY KEY,
    teacher_id INT NOT NULL,
    amount DECIMAL(10,2) NOT NULL,
    payment_date DATE NOT NULL,
    FOREIGN KEY (teacher_id) REFERENCES teachers(teacher_id),
);

CREATE TABLE subjects (
    subject_id INT IDENTITY PRIMARY KEY,
    name VARCHAR(64) NOT NULL UNIQUE,
);

CREATE TABLE group_subjects (
    group_subject_id INT IDENTITY PRIMARY KEY,
    group_id INT NOT NULL,
    subject_id INT NOT NULL,
    teacher_id INT NOT NULL,
    FOREIGN KEY (group_id) REFERENCES groups(group_id),
    FOREIGN KEY (subject_id) REFERENCES subjects(subject_id),
    FOREIGN KEY (teacher_id) REFERENCES teachers(teacher_id),
);

CREATE TABLE group_subject_schedule (
    group_subject_id INT NOT NULL,
    assignment_id INT NOT NULL,
    FOREIGN KEY (group_subject_id) REFERENCES group_subjects(group_subject_id),
    FOREIGN KEY (assignment_id) REFERENCES room_assignments(assignment_id),
);

