-- 현재 테이블 확인 - pg_tables : 포스트그레가 생성한 시스템 테이블
select * from pg_tables;

select * from students s;

-- 테이블 컬럼 사이즈 수정
alter table students 
alter column email type varchar(100); 