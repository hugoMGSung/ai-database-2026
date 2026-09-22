## PostgreSQL 데이터베이스 연동 파이썬
import psycopg
# from psycopg.rows import dict_row

# 우리가 만드는 함수 정의
def get_connection():
    return psycopg.connect(
        host='localhost',   # 127.0.0.1 와 동일
        port=5432,          # 포트번호 바뀌면 변경
        dbname='ai_db',  
        user='postgres',  
        password='123456'  
    )