from fastapi import FastAPI

app = FastAPI()

@app.get("/")
def read_root():
    return {"Hello from WBL AWS Team!"}

@app.get("/hello/{'kumar'}")
def read_item(name: str):
    return {"message": f"Hello, {kumar}!"}
