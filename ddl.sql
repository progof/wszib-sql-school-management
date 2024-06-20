-- CREATE TABLE employees (
--     employee_id INT PRIMARY KEY,
--     first_name VARCHAR(50),
--     last_name VARCHAR(50),
--     subjects VARCHAR(100)
-- );

-- CREATE TABLE students (
--     student_id INT PRIMARY KEY,
--     first_name VARCHAR(50),
--     last_name VARCHAR(50),
--     section VARCHAR(50),
--     class VARCHAR(10)
-- );

-- CREATE TABLE sections (
--     section_id INT PRIMARY KEY,
--     name VARCHAR(50)
-- );

-- CREATE TABLE subjects (
--     subject_id INT PRIMARY KEY,
--     name VARCHAR(50)
-- );

-- CREATE TABLE teachers_subjects (
--     teacher_id INT,
--     subject_id INT,
--     FOREIGN KEY (teacher_id) REFERENCES employees(employee_id),
--     FOREIGN KEY (subject_id) REFERENCES subjects(subject_id),
--     PRIMARY KEY (teacher_id, subject_id)
-- );

-- CREATE TABLE fees (
--     fee_id INT PRIMARY KEY,
--     student_id INT,
--     amount DECIMAL(10,2),
--     due_date DATE,
--     FOREIGN KEY (student_id) REFERENCES students(student_id)
-- );

-- CREATE TABLE salaries (
--     salary_id INT PRIMARY KEY,
--     employee_id INT,
--     amount DECIMAL(10,2),
--     payment_date DATE,
--     FOREIGN KEY (employee_id) REFERENCES employees(employee_id)
-- );

-- CREATE TABLE rooms (
--     room_id INT PRIMARY KEY,
--     name VARCHAR(50)
-- );

-- CREATE TABLE classes (
--     class_id INT PRIMARY KEY,
--     subject_id INT,
--     teacher_id INT,
--     room_id INT,
--     schedule TIMESTAMP,
--     FOREIGN KEY (subject_id) REFERENCES subjects(subject_id),
--     FOREIGN KEY (teacher_id) REFERENCES employees(employee_id),
--     FOREIGN KEY (room_id) REFERENCES rooms(room_id)
-- );

CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50)
);

CREATE TABLE students (
    student_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    section_id INT,
    class VARCHAR(10),
    FOREIGN KEY (section_id) REFERENCES sections(section_id)
);

CREATE TABLE sections (
    section_id INT PRIMARY KEY,
    name VARCHAR(50)
);

CREATE TABLE subjects (
    subject_id INT PRIMARY KEY,
    name VARCHAR(50)
);

CREATE TABLE teachers_subjects (
    teacher_id INT,
    subject_id INT,
    FOREIGN KEY (teacher_id) REFERENCES employees(employee_id),
    FOREIGN KEY (subject_id) REFERENCES subjects(subject_id),
    PRIMARY KEY (teacher_id, subject_id)
);

CREATE TABLE fees (
    fee_id INT PRIMARY KEY,
    student_id INT,
    amount DECIMAL(10,2),
    due_date DATE,
    FOREIGN KEY (student_id) REFERENCES students(student_id)
);

CREATE TABLE salaries (
    salary_id INT PRIMARY KEY,
    employee_id INT,
    amount DECIMAL(10,2),
    payment_date DATE,
    FOREIGN KEY (employee_id) REFERENCES employees(employee_id)
);

CREATE TABLE rooms (
    room_id INT PRIMARY KEY,
    name VARCHAR(50)
);

CREATE TABLE classes (
    class_id INT PRIMARY KEY,
    section_id INT,
    subject_id INT,
    teacher_id INT,
    room_id INT,
    schedule TIMESTAMP,
    FOREIGN KEY (section_id) REFERENCES sections(section_id),
    FOREIGN KEY (subject_id) REFERENCES subjects(subject_id),
    FOREIGN KEY (teacher_id) REFERENCES employees(employee_id),
    FOREIGN KEY (room_id) REFERENCES rooms(room_id)
);

CREATE TABLE room_assignments (
    assignment_id INT PRIMARY KEY,
    class_id INT,
    room_id INT,
    start_time TIMESTAMP,
    end_time TIMESTAMP,
    FOREIGN KEY (class_id) REFERENCES classes(class_id),
    FOREIGN KEY (room_id) REFERENCES rooms(room_id),
    CONSTRAINT unique_room_time UNIQUE (room_id, start_time, end_time)
);

-- Constraint to ensure that students cannot be in multiple sections and must pay fees
ALTER TABLE students
ADD CONSTRAINT unique_section_per_student UNIQUE (student_id, section_id);

ALTER TABLE fees
ADD CONSTRAINT fees_due_date_constraint CHECK (due_date >= CURRENT_DATE);

-- Ensure no student can attend classes if fees are unpaid
CREATE FUNCTION check_fees_paid() RETURNS TRIGGER AS $$
BEGIN
    IF NOT EXISTS (
        SELECT 1 FROM fees
        WHERE student_id = NEW.student_id
        AND amount > 0
        AND due_date < CURRENT_DATE
    ) THEN
        RAISE EXCEPTION 'Student has unpaid fees';
    END IF;
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER trigger_check_fees_paid
BEFORE INSERT ON room_assignments
FOR EACH ROW
EXECUTE FUNCTION check_fees_paid();

