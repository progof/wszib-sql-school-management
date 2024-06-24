import { faker } from "@faker-js/faker";

interface Room {
	id: number;
	name: string;
}

function replace(str: string) {
	return str.replace(/'/g, "''");
}

const ROOM_NAMES = [
	"K204",
	"K205",
	"K206",
	"K207",
	"K305",
	"K306",
	"K307",
	"K409",
	"K410",
];

const rooms: Room[] = ROOM_NAMES.map((name, i) => {
	return {
		id: i + 1,
		name,
	};
});

const start_time = Date.UTC(2024, 1, 1, 8);
const end_time = Date.UTC(2024, 1, 1, 18);

const ROOM_ASSIGNMENT_TYPES = ["free", "lesson", "course"];
type RoomAssignmentType = (typeof ROOM_ASSIGNMENT_TYPES)[number];

const lesson_duration = 45 * 60 * 1000; // 45 minutes
const break_durations = [15 * 60 * 1000, 30 * 60 * 1000, 45 * 60 * 1000]; // 15 minutes, 30 minutes, 45 minutes
const course_duration = 90 * 60 * 1000; // 1.5 hours

const rooms_schedule = rooms
	.map((room) => {
		return {
			...room,
			start_time,
			end_time,
		};
	})
	.map((room) => {
		const room_schedule: Array<{
			assignment_type: RoomAssignmentType;
			start_time: Date;
			end_time: Date;
		}> = [];
		const start_time = room.start_time;
		const end_time = room.end_time;
		let current_time = start_time;

		while (current_time < end_time) {
			const assignment_type = faker.helpers.arrayElement(ROOM_ASSIGNMENT_TYPES);

			if (assignment_type === "free") {
				const end_time =
					current_time + faker.helpers.arrayElement(break_durations);
				room_schedule.push({
					assignment_type,
					start_time: new Date(current_time),
					end_time: new Date(end_time),
				});
				current_time = end_time;
			} else if (assignment_type === "lesson") {
				const end_time = current_time + lesson_duration;
				room_schedule.push({
					assignment_type,
					start_time: new Date(current_time),
					end_time: new Date(end_time),
				});
				current_time = end_time;
			} else if (assignment_type === "course") {
				const end_time = current_time + course_duration;
				room_schedule.push({
					assignment_type,
					start_time: new Date(current_time),
					end_time: new Date(end_time),
				});
				current_time = end_time;
			}
		}

		return {
			id: room.id,
			name: room.name,
			schedule: room_schedule.filter((assignment) => {
				return assignment.assignment_type !== "free";
			}),
		};
	});

interface RoomAssignment {
	assignment_id: number;
	room_id: number;
	start_time: Date;
	end_time: Date;
	type: "lesson" | "course";
}

let assignment_id = 0;

const room_assignments: RoomAssignment[] = rooms_schedule
	.flatMap((room) => {
		return room.schedule.map((assignment) => {
			return {
				assignment_id: ++assignment_id,
				room_id: room.id,
				start_time: assignment.start_time,
				end_time: assignment.end_time,
				type: assignment.assignment_type as "lesson" | "course",
			};
		});
	})
	.sort((a, b) => {
		return a.start_time.getTime() - b.start_time.getTime();
	});

interface Course {
	course_id: number;
	name: string;
	start_date: Date;
	end_date: Date;
	price: number;
}

const COURSE_NAMES = [
	"Mathematics",
	"Physics",
	"Chemistry",
	"Biology",
	"History",
	"Geography",
	"English",
	"French",
	"Spanish",
	"German",
];

const courses: Course[] = COURSE_NAMES.map((name, i) => {
	const start_date = new Date(Date.UTC(2024, 1, 1));
	const end_date = new Date(start_date.getTime() + 30 * 24 * 60 * 60 * 1000); // 30 days

	return {
		course_id: i + 1,
		name,
		start_date,
		end_date,
		price: faker.number.int({ min: 100, max: 1000 }),
	};
});

interface CourseSchedule {
	course_id: number;
	assignment_id: number;
}

const course_schedules: CourseSchedule[] = room_assignments
	.filter((assignment) => {
		return assignment.type === "course";
	})
	.map((assignment) => {
		return {
			course_id: faker.helpers.arrayElement(courses).course_id,
			assignment_id: assignment.assignment_id,
		};
	});

interface Group {
	group_id: number;
	name: string;
}

const GROUP_NAMES = ["A", "B", "C", "D"];

const groups: Group[] = GROUP_NAMES.map((name, i) => {
	return {
		group_id: i + 1,
		name,
	};
});

interface Student {
	student_id: number;
	first_name: string;
	last_name: string;
	group_id: number;
}

const students: Student[] = [];

for (let i = 0; i < 100; i++) {
	const group = faker.helpers.arrayElement(groups);
	students.push({
		student_id: i + 1,
		first_name: faker.person.firstName(),
		last_name: faker.person.lastName(),
		group_id: group.group_id,
	});
}

interface StudentCourse {
	student_id: number;
	course_id: number;
	payment_date: Date;
}

const student_courses: StudentCourse[] = students
	.map((student) => {
		return {
			student_id: student.student_id,
			course_id: faker.helpers.arrayElement(courses).course_id,
			payment_date: new Date(Date.UTC(2024, 1, 1)),
		};
	})
	.filter(() => faker.datatype.boolean());

interface Teacher {
	teacher_id: number;
	first_name: string;
	last_name: string;
}

const teachers: Teacher[] = [];

for (let i = 0; i < 10; i++) {
	teachers.push({
		teacher_id: i + 1,
		first_name: faker.person.firstName(),
		last_name: faker.person.lastName(),
	});
}

interface TeacherSalary {
	salary_id: number;
	teacher_id: number;
	amount: number;
	payment_date: Date;
}

const teacher_salaries: TeacherSalary[] = teachers.map((teacher) => {
	return {
		salary_id: teacher.teacher_id,
		teacher_id: teacher.teacher_id,
		amount: faker.number.int({ min: 1000, max: 5000 }),
		payment_date: faker.date.between({
			from: new Date(Date.UTC(2024, 1, 1)),
			to: new Date(Date.UTC(2024, 1, 30)),
		}),
	};
});

interface Subject {
	subject_id: number;
	name: string;
}

const SUBJECT_NAMES = [
	"Mathematics",
	"Physics",
	"Chemistry",
	"Biology",
	"History",
	"Geography",
	"English",
	"French",
	"Spanish",
	"German",
];

const subjects: Subject[] = SUBJECT_NAMES.map((name, i) => {
	return {
		subject_id: i + 1,
		name,
	};
});

interface GroupSubject {
	group_subject_id: number;
	group_id: number;
	subject_id: number;
	teacher_id: number;
}

let group_subject_id = 0;

const group_subjects: GroupSubject[] = groups.flatMap((group) => {
	return subjects.map((subject) => {
		return {
			group_subject_id: ++group_subject_id,
			group_id: group.group_id,
			subject_id: subject.subject_id,
			teacher_id: faker.helpers.arrayElement(teachers).teacher_id,
		};
	});
});

interface GroupSubjectSchedule {
	group_subject_id: number;
	assignment_id: number;
}

const group_subject_schedules: GroupSubjectSchedule[] = room_assignments
	.filter((assignment) => {
		return assignment.type === "lesson";
	})
	.map((assignment) => {
		return {
			group_subject_id:
				faker.helpers.arrayElement(group_subjects).group_subject_id,
			assignment_id: assignment.assignment_id,
		};
	});

function getInsertRoomSQL(room: Room) {
	return `INSERT INTO rooms (name) VALUES ('${room.name}');`;
}

function getInsertRoomAssignmentSQL(assignment: RoomAssignment) {
	return `INSERT INTO room_assignments (room_id, start_time, end_time) VALUES (${
		assignment.room_id
	}, '${assignment.start_time.toISOString()}', '${assignment.end_time.toISOString()}');`;
}

function getInsertCourseSQL(course: Course) {
	return `INSERT INTO courses (name, start_date, end_date, price) VALUES ('${
		course.name
	}', '${course.start_date.toISOString()}', '${course.end_date.toISOString()}', ${
		course.price
	});`;
}

function getInsertCourseScheduleSQL(schedule: CourseSchedule) {
	return `INSERT INTO courses_schedule (course_id, assignment_id) VALUES (${schedule.course_id}, ${schedule.assignment_id});`;
}

function getInsertGroupSQL(group: Group) {
	return `INSERT INTO groups (name) VALUES ('${group.name}');`;
}

function getInsertStudentSQL(student: Student) {
	return `INSERT INTO students (first_name, last_name, group_id) VALUES ('${replace(
		student.first_name
	)}', '${replace(student.last_name)}', ${student.group_id});`;
}

function getInsertStudentCourseSQL(studentCourse: StudentCourse) {
	return `INSERT INTO student_courses (student_id, course_id, payment_date) VALUES (${
		studentCourse.student_id
	}, ${
		studentCourse.course_id
	}, '${studentCourse.payment_date.toISOString()}');`;
}

function getInsertTeacherSQL(teacher: Teacher) {
	return `INSERT INTO teachers (first_name, last_name) VALUES ('${replace(
		teacher.first_name
	)}', '${replace(teacher.last_name)}');`;
}

function getInsertTeacherSalarySQL(salary: TeacherSalary) {
	return `INSERT INTO teacher_salaries (teacher_id, amount, payment_date) VALUES (${
		salary.teacher_id
	}, ${salary.amount}, '${salary.payment_date.toISOString()}');`;
}

function getInsertSubjectSQL(subject: Subject) {
	return `INSERT INTO subjects (name) VALUES ('${subject.name}');`;
}

function getInsertGroupSubjectSQL(groupSubject: GroupSubject) {
	return `INSERT INTO group_subjects (group_id, subject_id, teacher_id) VALUES (${groupSubject.group_id}, ${groupSubject.subject_id}, ${groupSubject.teacher_id});`;
}

function getInsertGroupSubjectScheduleSQL(schedule: GroupSubjectSchedule) {
	return `INSERT INTO group_subject_schedule (group_subject_id, assignment_id) VALUES (${schedule.group_subject_id}, ${schedule.assignment_id});`;
}

const tables = [
	"group_subject_schedule",
	"group_subjects",
	"subjects",
	"teacher_salaries",
	"teachers",
	"student_courses",
	"students",
	"groups",
	"courses_schedule",
	"courses",
	"room_assignments",
	"rooms",
];

const result = [
	tables.map((table) => `DELETE FROM ${table};`).join("\n"),
	rooms.map(getInsertRoomSQL).join("\n"),
	room_assignments.map(getInsertRoomAssignmentSQL).join("\n"),
	courses.map(getInsertCourseSQL).join("\n"),
	course_schedules.map(getInsertCourseScheduleSQL).join("\n"),
	groups.map(getInsertGroupSQL).join("\n"),
	students.map(getInsertStudentSQL).join("\n"),
	student_courses.map(getInsertStudentCourseSQL).join("\n"),
	teachers.map(getInsertTeacherSQL).join("\n"),
	teacher_salaries.map(getInsertTeacherSalarySQL).join("\n"),
	subjects.map(getInsertSubjectSQL).join("\n"),
	group_subjects.map(getInsertGroupSubjectSQL).join("\n"),
	group_subject_schedules.map(getInsertGroupSubjectScheduleSQL).join("\n"),
].join("\n\n");

await Deno.writeTextFile("seed.sql", result);
