-- 학생 데이터 입력
INSERT INTO students (name, email, age, major)
VALUES
    ('김철수', 'kim@example.com', 21, '인공지능'),
    ('이영희', 'lee@example.com', 22, '데이터분석'),
    ('박민수', 'park@example.com', 23, '웹개발'),
    ('최지훈', 'choi@example.com', 24, '임베디드'),
    ('정수빈', 'jung@example.com', 20, '클라우드');

-- 과목 데이터 입력
INSERT INTO courses (title, instructor, hours)
VALUES
    ('PostgreSQL 기본', '성명건', 8),
    ('FastAPI 서버 개발', '성명건', 12),
    ('데이터 분석 기초', '성명건', 10);

-- 수강 데이터 입력
INSERT INTO enrollments (student_id, course_id)
VALUES
    (1, 1),
    (1, 2),
    (2, 1),
    (3, 2),
    (4, 3),
    (5, 1);