FROM ubuntu:latest

WORKDIR /app

COPY . .

RUN apt-get update && \
    apt-get install  -y  python3-pip && \
    apt install -y tmux

RUN pip install --upgrade pip
RUN pip install -r requirements.txt

EXPOSE 5000

ENTRYPOINT [ "python", "app.py" ]


