# 메모리기반 학생관리 API
from fastapi import FastAPI, HTTPException
from pydantic import BaseModel

app = FastAPI()

# 이렇게 데이터를 받을거야
class StudentModel(BaseModel):
    name: str
    age: int
    major: str

# 가짜 데이터(가상 DB)
students = [
    { 'id': 1, 'name': '김철수', 'age': 21, 'major': '인공지능' },
    { 'id': 2, 'name': '이영희', 'age': 22, 'major': '빅데이터' },
    { 'id': 3, 'name': '성유고', 'age': 25, 'major': '컴퓨터공학' }
]

@app.get('/')
def read_root():
    return { 'message' : 'Hello FastAPI!' }

@app.get('/health')
def get_status():
    return { 'message' : 'Server is OK!' }

@app.get('/students')
def get_students():
    # select * from students; 와 동일
    return students  # 위에 선언한 배열을 그대로 출력(돌려줌) 

@app.get('/students/{id}')
def get_student(id: int):
    # select * from students where id = 1; 동일
    for student in students:
        if student['id'] == id:
            return student

    # 404 페이지에러 처리(예외처리)
    raise HTTPException(status_code=404, detail='Student not found')

# 신규 데이터 추가
@app.post('/students')
def create_student(student: StudentModel):
    # insert into students (...) values (...); 동일
    # 현재 students 배열 최대값 + 1 새 아이디 
    new_id = max(item['id'] for item in students) + 1  

    new_student = { # python 딕셔너리가 json화
        'id': new_id,
        'name': student.name,
        'age': student.age,
        'major': student.major
    }

    students.append(new_student)  # id가 추가된 new_student
    return students  # 배열 전체 리턴

# 기존 데이터 전체 수정
@app.put('/students/{id}')
def update_student(id: int, student: StudentModel):
    # update students set ... where id = 1; 와 동일
    for item in students:
        if item['id'] == id:
            item['name'] = student.name
            item['age'] = student.age
            item['major'] = student.major

            return item   # 수정완료한 한 건 만 리턴

    # 예외처리
    raise HTTPException(status_code=404, detail='Student not found')


# 기존 데이터 일부만 수정 - 잘 사용안함, PUT으로 대체가능
@app.patch('/students/{id}')
def patch_student(id: int, student: StudentModel):
    for item in students:
        if item['id'] == id:
            if student.name is not None: # student에 이름이 들어있으면
                item['name'] = student.name

            if student.age is not None:
                item['age'] = student.age

            if student.major is not None:
                item['major'] = student.major

            return item

    raise HTTPException(status_code=404, detail='Student not found')

# 삭제
@app.delete('/students/{id}')
def delete_student(id: int):
    # delete from students where id = 1; 동일
    for index, item in enumerate(students):
        if item['id'] == id:
            # students 배열에서 현재 index의 값만 뽑아냄(배열에서 사라짐)
            delete_student = students.pop(index)  

            return {
                'message': 'Student deleted',
                'student': delete_student
            }

    raise HTTPException(status_code=404, detail='Student not found')
  