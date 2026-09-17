-- 현재 테이블 확인 - pg_tables : 포스트그레가 생성한 시스템 테이블
select * from pg_tables;

select * from students s;

-- 테이블 컬럼 사이즈 수정
alter table students 
alter column "email" type varchar(100);

-- 데이터 삽입
insert into students (age, major)
values (23, '경영학과');

-- 같은 이메일 입력
insert into students (name, age, email, major)
values ('홍홍홍', 24, 'hong@gmail.com', '일문학과');

-- 학년으로 모두 4로
update students set
    grade = 4;

-- 체크제약조건없을때 1번 학생 학년을 88로
update students set
     grade = 88
where id = 1;

-- 체크제약조건 설정 후 새 학생 추가
insert into students (name, email, major, grade)
values ('애슐리', 'ashely@gmail.com', '영문학과', 2);


-- 상품 추가 쿼리
insert into products (name, price)
values ('갤럭시S26', 1100000);

