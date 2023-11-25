FROM debian:latest

RUN apt update && apt upgrade -y
RUN apt install git python3-pip ffmpeg -y

RUN mkdir /VideoPlayerBot
WORKDIR /VideoPlayerBot
COPY . /VideoPlayerBot

RUN pip3 install --no-cache-dir -U -r requirements.txt

CMD python3 main.py
