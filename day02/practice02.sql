-- 테이블 확인
select * from students s;

-- 테이블 완전 초기화 : 데이터 모두 삭제
--truncate students;

-- 학생 정보 추가 쿼리
-- 쿼리문법 문자열 무조건 ''
insert into students (name, age, email) 
values ('홍길동', 20, 'hong@example.com');

-- 컬럼 순서 변경. 키와 값의 순서는 일치해야 함
insert into students (age, email, name) 
values (29, 'minjoon@gmail.com','권민준');

-- 여러 데이터 추가
insert into students (name, age, email) 
values ('홍길순', 20, 'hong1@example.com'), 
 ('홍길자', 50, 'hong2@example.com'),
 ('홍길매', 30, 'hong3@example.com');

insert into students (name, age, email) 
values ('홍수와와', 25, 'hongsw@example.com');

-- 전체 데이터 조회
select * from students s ;

-- 특정 컬럼만 조회
select s.name, s.age from students s;

SELECT id, name, age, email, created_at
FROM public.students;

-- 필터링! 필요한 데이터만 조회
select * from students s
 where s.age < 30;

-- 이름으로 필터링 할때
select * from students s
 where s.name = '홍길동';

-- 아이디로 필터링
select * from students s
 where s.id = 7;

-- 나이와 이름이 일치하는 데이터 
select * from students s
 where s.age = 20
   and s.name = '홍길동';

-- 나이가 참 또는 이름이 참인 데이터 
select * from students s
 where s.age = 21
   or s.name = '홍길동';

-- 문자열에 해당 문자나 문자열이 존재하는 것만 조회
-- LIKE문 홍으로 시작하는 문자열 조회
select * from students s
where s.name like '홍%';

-- 순으로 끝나는 문자열 조회
select * from students s
where s.name like '%순';

-- 이름 중간에 민이 들어가는 데이터 조회
select * from students s
where s.name like '%민%';

-- 홍으로 시작하는데 글자 길이가 4자인 사람만 조회
select * from students s
where s.name like '홍___';

-- Order by 정렬
select * from students s
 order by id desc;

select * from students s
 order by age asc;

-- 나이는 내림차순, 이름은 오름차순으로 정렬
select * from students s
 order by age desc, name asc;

-- 조회수 제한
select * from students s
 order by id desc
 limit 3;

