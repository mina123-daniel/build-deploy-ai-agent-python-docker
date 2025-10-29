import os
from fastapi import FastAPI

app = FastAPI()

MY_PROJECT = os.environ.get("MY_PROJECT") or "This is my project"
API_KEY = os.environ.get("API_KEY")

if not API_KEY:
    raise NotImplementedError("'API_KEY' is not set in environment variables")

@app.get("/")
def read_index():
    return{"hello":"world!", "project name": MY_PROJECT, "api_key": API_KEY}