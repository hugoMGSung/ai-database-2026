/* javascript 주석과 동일 */
-- 한줄 주석

-- 데이터베이스 생성
create database ai_db;

-- 테이블 생성
create table students (
	id int generated always as identity primary key,  -- 학생 구분값 자동증가
	name varchar(50) not null, -- 이름
	age int, -- 나이 
	email varchar(100), -- 이메일
	created_at timestamp default current_timestamp  -- 현재 작성된 일자
);

-- 데이터 삽입(INSERT)
insert into public.students (name, age, email)
values ('홍길동', 20, 'honggd@example.com');

insert into public.students (name, age, email)
values ('김철수', 21, 'kim@gmail.com'),
		('이영희', 21, 'lee@gmail.com'),
		('박민수', 22, 'park@gmail.com'),
		('성명건', 50, 'sung@gmail.com');

-- 데이터 확인(SELECT)
select * from public.students;


-- 데이터 수정(UPDATE)
update students set
       email = 'hong@kakao.com'
 where id = 1;

-- 데이터 삭제(DELETE)
delete from students 
 where name = '홍길동';
