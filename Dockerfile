FROM ubuntu:22.04

COPY . /app

RUN pip install -r requirements.txt


