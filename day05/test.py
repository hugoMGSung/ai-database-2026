
students = [
    { 'id': 1, 'name': '김철수', 'age': 21, 'major': '인공지능' },
    { 'id': 2, 'name': '이영희', 'age': 22, 'major': '빅데이터' },
    { 'id': 3, 'name': '성유고', 'age': 25, 'major': '컴퓨터공학' }
]

for index, student in enumerate(students):
    print(index)
    print(student)
    print()

for student in students:
    print(student)
    print()