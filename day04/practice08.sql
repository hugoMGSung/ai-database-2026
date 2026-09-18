-- JOIN 없이
select * from students s;

select * from courses c;

select * from enrollments e;

-- JOIN
select s.id "학생번호", s.name "학생이름", s.email "이메일", s.major "전공",
       e.id "수강번호", e.enrolled_at "수강일자",
       c.id "과목번호", c.title "과목명", c.instructor "교강사명", c.hours "총시간" 
  from students s 
inner join enrollments e 
on s.id = e.student_id 
inner join courses c 	
on c.id = e.course_id;


-- where
select s.id "학생번호", s.name "학생이름", s.email "이메일", s.major "전공",
       e.id "수강번호", e.enrolled_at "수강일자",
       c.id "과목번호", c.title "과목명", c.instructor "교강사명", c.hours "총시간" 
  from students s 
inner join enrollments e 
on s.id = e.student_id 
inner join courses c 	
on c.id =e.course_id
where s.id = 1;


select s.id "학생번호", s.name "학생이름", s.email "이메일", s.major "전공",
       e.id "수강번호", e.enrolled_at "수강일자",
       c.id "과목번호", c.title "과목명", c.instructor "교강사명", c.hours "총시간" 
  from students s 
inner join enrollments e 
on s.id = e.student_id 
inner join courses c 	
on c.id =e.course_id
where s.major = '웹개발';

select s.id "학생번호", s.name "학생이름", s.email "이메일", s.major "전공",
       e.id "수강번호", e.enrolled_at "수강일자",
       c.id "과목번호", c.title "과목명", c.instructor "교강사명", c.hours "총시간" 
  from students s 
inner join enrollments e 
on s.id = e.student_id 
inner join courses c 	
on c.id =e.course_id
where c.hours >= 10 and s.id = 1;


-- 정렬
select s.id "학생번호", s.name "학생이름", s.email "이메일", s.major "전공",
       e.id "수강번호", e.enrolled_at "수강일자",
       c.id "과목번호", c.title "과목명", c.instructor "교강사명", c.hours "총시간" 
  from students s 
inner join enrollments e 
on s.id = e.student_id 
inner join courses c 	
on c.id =e.course_id
order by c.title asc, s.name desc;


-- 학생 추가
insert into students (name, email, age, major)
values ('주예찬', 'joo@example.com', 24, '인공지능'),
       ('이찬혁', 'lee@example.com', 26, '임베디드');

select * from students s;


-- OUTER JOIN
select * from students s 
  left outer join enrollments e 
    on s.id = e.student_id;

select * from students s 
  left outer join enrollments e 
    on s.id = e.student_id
  left outer join courses c 
    on e.course_id = c.id
  where e.id is null;



-- 집계함수
-- count()
select count(*) "학생수" from students;

-- sum()
select sum(age) "학생나이합" from students s ;

-- 평균
select sum(age) / count(*) "평균나이" from students s;
select avg(age) "평균나이" from students s ;

-- 최소나이
select min(age) "최소령자" from students s ;

-- 최고나이
select max(age) "최고령자" from students s ;

-- 전공별 학생수 집계 조회
select count(*) "학생수", s.major  
  from students s
group by s.major
order by s.major;



select c.title, count(*) from courses c 
  inner join enrollments e 
  on c.id = e.course_id
  group by c.title;


-- 트랜잭션 실습
drop table accounts;

create table accounts (
	account_id int primary key,  -- 직접 입력해야함
	owner_name varchar(50) not null, 
	balance numeric(12, 0) not null check (balance >= 0)
);

-- 트랜잭션 시작
begin;

insert into accounts (account_id, owner_name, balance)
values (1, '김철수', 100000), (2, '박영희', 50000); 

select * from accounts a;

-- 확정/커밋
commit;
-- 취소/롤백
rollback;



begin;

update accounts set
 balance = 1000000
where account_id = 2;

commit;

rollback;


-- 삭제 트랜잭션
begin;

delete from accounts ;

rollback;






