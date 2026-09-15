# ai-database-2026

AI 에이전트 개발자 데이터베이스 리포지토리

## 1일차

### PostgreSQL 개요

데이터베이스. 데이터를 한군데에서 관리하는 목적의 시스템

줄여서 Postgre, Postgres 라고 통칭. **관계형** 데이터베이스.

`SQL`을 통해서 데이터를 저장, 수정, 삭제, 조회 할 수 있는 시스템

- 기타 관계형 데이터베이스
  - Oracle
  - MySQL / MariaDB
  - SQL Server

위 대부분 상용 소프트웨어, Postgre는 **오픈소스 시스템**. 라이선스 비용 X

### DB의 특징

- 데이터 무결성
- 데이터 안정성
- 데이터 동시성
- 표준SQL 지원
- 확장성

### PostgreSQL 설치

#### 기본 설치

- 자신의 OS에 직접 설치하는 방법
- postgresql-18.6-3-windows-x64.exe

![](assets/20260915_112053_image.png)

- superuser 아이디 - postgres 패스워드 지정

![](assets/20260915_112216_image.png)

- port 5432 기억할 것

#### DBeaver 설치

GUI DB관리 실행 툴

- https://dbeaver.io/download/
- 설치 생략

#### DB 접속

1. DBeaver 실행
2. 새 데이터베이스 연결 클릭

![](assets/20260915_121803_image.png)

3. 데이터베이스 설정 입력

![](assets/20260915_121835_image.png)

4. Test Connection 클릭 Driver 다운로드 후

![](assets/20260915_121856_image.png)

5. 정상 접속 확인 후 완료 클릭

#### Docker 개요

- 환경의존성 문제를 해결한 컨테이너 기술 솔루션
- 가상환경 상 프로그램 실행하게 제공
- 컨테이너 - OS, 라이브러리, 설정 등 하나의 패키지로 만들어진 이미지
- 기본 Docker 실행파일 -> Docker Desktop 윈도우에서 Docker를 편하게 사용하도록

#### Docker Desktop 설치

- https://docs.docker.com/desktop/setup/install/windows-install/
- 윈도우 버전 다운로드 후 설치
- Close and Restart 이후
- WSL(Widows Subsystem for Linux) 추가 설치

![](assets/20260915_135904_image.png)

![](assets/20260915_143106_image.png)

- 설치 완료 후 화면
-

#### PostgreSQL 이미지 다운로드

#### 컨테이너 실행

#### DBeaver에서 접속

### DB 기본 사용법

#### PostgreSQL 기본구조

![](assets/20260915_142829_image.png)

- ai_db - 데이터베이스(프로젝트 전체 공간)
- Schemas - 프로젝트 폴더
- Tables - 실제 데이터를 담는 표

#### DB 생성

- SQL 편집기 클릭
- 새 이름으로 저장, *.sql로 저장
- ai_db 명칭의 새 데이터베이스 생성

```sql
create database ai_db;
```

#### 테이블 생성
