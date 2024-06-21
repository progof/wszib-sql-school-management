DROP TABLE IF EXISTS group_subject_schedule;
DROP TABLE IF EXISTS group_subjects;
DROP TABLE IF EXISTS subjects;
DROP TABLE IF EXISTS student_courses;
DROP TABLE IF EXISTS students;
DROP TABLE IF EXISTS teacher_salaries;
DROP TABLE IF EXISTS teachers;
DROP TABLE IF EXISTS courses_schedule;
DROP TABLE IF EXISTS courses;
DROP TABLE IF EXISTS room_assignments;
DROP TABLE IF EXISTS groups;
DROP TABLE IF EXISTS rooms;

DROP TRIGGER IF EXISTS room_assignment_overlap;
DROP TRIGGER IF EXISTS course_payment_availability;