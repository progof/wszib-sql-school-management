CREATE TABLE students (
    student_id INT PRIMARY KEY,
    first_name VARCHAR(64) NOT NULL,
    last_name VARCHAR(64) NOT NULL,
    course_id INT,
    group_id INT NOT NULL,
    FOREIGN KEY (course_id) REFERENCES cources(course_id),
    FOREIGN KEY (group_id) REFERENCES groups(group_id)
);

CREATE TABLE teahcers (
    teahcer_id INT PRIMARY KEY,
    first_name VARCHAR(64) NOT NULL,
    last_name VARCHAR(64) NOT NULL
);

CREATE TABLE teacher_salaries (
    salary_id INT PRIMARY KEY,
    teacher_id INT NOT NULL,
    amount DECIMAL(10,2) NOT NULL,
    payment_date DATE NOT NULL,
    FOREIGN KEY (teacher_id) REFERENCES teachers(teacher_id)
);

CREATE TABLE rooms (
    room_id INT PRIMARY KEY,
    name VARCHAR(50) NOT NULL
);

CREATE TABLE room_assignments (
    assignment_id INT PRIMARY KEY,
    room_id INT NOT NULL,
    start_time TIMESTAMP NOT NULL,
    end_time TIMESTAMP NOT NULL,
    FOREIGN KEY (room_id) REFERENCES rooms(room_id)
);

CREATE TABLE courses (
    course_id INT PRIMARY KEY,
    name VARCHAR(64) NOT NULL,
    start_date DATE NOT NULL,
    end_time DATE NOT NULL,
    price DECIMAL(10,2) NOT NULL
);

CREATE TABLE courses_schedule (
    course_id INT NOT NULL,
    assignment_id INT NOT NULL,
    FOREIGN KEY (course_id) REFERENCES courses(course_id),
    FOREIGN KEY (assignment_id) REFERENCES room_assignments(assignment_id)
);

CREATE TABLE courses_payments (
    payment_id INT PRIMARY KEY,
    student_id INT NOT NULL,
    course_id INT NOT NULL,
    payment_date DATE NOT NULL,
    FOREIGN KEY (student_id) REFERENCES students(student_id),
    FOREIGN KEY (section_id) REFERENCES sections(section_id)
);

CREATE TABLE groups (
    group_id INT PRIMARY KEY,
    name VARCHAR(64) NOT NULL,
);

CREATE TABLE subjects (
    subject_id INT PRIMARY KEY,
    name VARCHAR(64) NOT NULL
);

CREATE TABLE group_subjects (
    group_id INT NOT NULL,
    subject_id INT NOT NULL,
    teacher_id INT NOT NULL,
    FOREIGN KEY (group_id) REFERENCES groups(group_id),
    FOREIGN KEY (subject_id) REFERENCES subjects(subject_id),
    FOREIGN KEY (teacher_id) REFERENCES teachers(teacher_id)
);

CREATE TABLE group_subject_schedule (
    group_subject_id INT NOT NULL,
    assignment_id INT NOT NULL,
    FOREIGN KEY (group_subject_id) REFERENCES group_subjects(group_subject_id),
    FOREIGN KEY (assignment_id) REFERENCES room_assignments(assignment_id)
);

-- create a trigger to chech that room assignments do not overlap in t-sql

CREATE TRIGGER room_assignment_overlap
BEFORE INSERT ON room_assignments
FOR EACH ROW
BEGIN
    IF EXISTS (
        SELECT 1
        FROM room_assignments
        WHERE room_id = NEW.room_id
        AND (
            (NEW.start_time BETWEEN start_time AND end_time)
            OR (NEW.end_time BETWEEN start_time AND end_time)
        )
    ) THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Room assignment overlaps with another room assignment';
    END IF;
END;
