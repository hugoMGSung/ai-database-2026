-- 학생 테이블 생성쿼리
create table students (
	id int generated always as identity primary key,  -- 학생 구분값 자동증가
	name varchar(50) not null, -- 이름
	age int, -- 나이 
	email varchar(100), -- 이메일
	created_at timestamp default current_timestamp  -- 현재 작성된 일자
);

-- 수강 신청 테이블 생성쿼리
create table enrollments (
	id int generated always as identity primary key,
	students_id int not null, -- 수강하는 학생이 없으면 안됨
	course_name varchar(100) not null,  -- 과목명 없으면 안됨
	enrolled_at timestamp default current_timestamp,
	constraint fk_enrollments_students
		foreign key (students_id)
		references students(id)
);


insert into enrollments (students_id, course_name)
values (100, 'Python');