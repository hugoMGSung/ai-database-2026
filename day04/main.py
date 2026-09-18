# 파이썬에서 다른 패키지를 사용하려면
# from * import **
# import * 
from fastapi import FastAPI

app = FastAPI()  

@app.get('/')
def read_root():
    return { 'message' : 'Hello FastAPI' }