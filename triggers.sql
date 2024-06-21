-- create a trigger to chech that room assignments do not overlap in t-sql

CREATE TRIGGER room_assignment_overlap
ON room_assignments
INSTEAD OF INSERT
AS
BEGIN
    IF EXISTS (
        SELECT 1
        FROM room_assignments
        INNER JOIN inserted
        ON room_assignments.room_id = inserted.room_id
        WHERE inserted.start_time < room_assignments.end_time
        AND inserted.end_time > room_assignments.start_time
    )
    BEGIN
        RAISERROR ('Room assignment overlaps with existing assignment', 16, 1);
    END
    ELSE
    BEGIN
        INSERT INTO room_assignments (room_id, start_time, end_time)
        SELECT room_id, start_time, end_time FROM inserted;
    END
END;


declare @room_id int;
insert into rooms (name) values ('Room 101');
set @room_id = SCOPE_IDENTITY();

insert into room_assignments (room_id, start_time, end_time) values (@room_id, '2024-06-01 08:00:00', '2024-06-01 10:00:00');

-- trying to create overlaping room assignment
insert into room_assignments (room_id, start_time, end_time) values (@room_id, '2024-06-01 09:00:00', '2024-06-01 11:00:00');


-- create t-sql trigger on the student_courses table to check if the course is still available before inserting a payment. Check that current date is less than the start date of the course

CREATE TRIGGER course_payment_availability
ON student_courses
INSTEAD OF INSERT
AS
BEGIN
    IF NOT EXISTS (
        SELECT 1
        FROM inserted
        INNER JOIN courses
        ON inserted.course_id = courses.course_id
        WHERE GETDATE() < courses.start_date
    )
    BEGIN
        RAISERROR ('Course is not available', 16, 1);
    END
    ELSE
    BEGIN
        INSERT INTO student_courses
        SELECT * FROM inserted;
    END
END;

declare @group_id int;
declare @student_id int;
declare @course_id int;

insert into groups (name) values ('Group 1');
set @group_id = SCOPE_IDENTITY();

insert into students (first_name, last_name, group_id) values ('John', 'Doe', @group_id);
set @student_id = SCOPE_IDENTITY();

insert into courses (name, start_date, end_date, price) values ('Course 1', '2024-06-01', '2024-06-30', 1000);
set @course_id = SCOPE_IDENTITY();

-- trying to assign course to student before course start date

insert into student_courses (student_id, course_id, payment_date) values (@student_id, @course_id, GETDATE());


