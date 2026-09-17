-- 학생 수강관리 시스템
DROP TABLE if exists "enrollments";
DROP TABLE if exists "courses";
DROP table if EXISTS "students";

CREATE TABLE "students" (
	"id"	int	    generated always as identity	NOT NULL,
	"name"	varchar(50)		NOT NULL,
	"email"	varchar(100)		NULL,
	"age"	int		NULL,
	"major"	varchar(50)		NOT NULL,
	"created_at"	timestamp	DEFAULT current_timestamp	NULL
);

CREATE TABLE "courses" (
	"id"	int		generated always as identity NOT NULL,
	"title"	varchar(100)		NULL,
	"instructor"	varchar(50)		NULL,
	"hours"	int		NULL,
	"created_at"	timestamp	DEFAULT current_timestamp	NULL
);



CREATE TABLE "enrollments" (
	"id"	int		generated always as identity NOT NULL,
	"enrolled_at"	timestamp	DEFAULT current_timestamp	NULL,
	"student_id"	int		NOT NULL,
	"course_id"	int		NOT NULL
);

ALTER TABLE "students" ADD CONSTRAINT "PK_STUDENTS" PRIMARY KEY (
	"id"
);

ALTER TABLE "courses" ADD CONSTRAINT "PK_COURSES" PRIMARY KEY (
	"id"
);

ALTER TABLE "enrollments" ADD CONSTRAINT "PK_ENROLLMENTS" PRIMARY KEY (
	"id"
);

ALTER TABLE "enrollments" ADD CONSTRAINT "FK_students_TO_enrollments_1" FOREIGN KEY (
	"student_id"
)
REFERENCES "students" (
	"id"
);

ALTER TABLE "enrollments" ADD CONSTRAINT "FK_courses_TO_enrollments_1" FOREIGN KEY (
	"course_id"
)
REFERENCES "courses" (
	"id"
);

