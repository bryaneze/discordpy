FROM python:3.8.12-slim
ENV DEBIAN_FRONTEND=noninteractive 

WORKDIR /discordpy/


COPY ./requirements.txt /discordpy/requirements.txt 

RUN pip install -r /discordpy/requirements.txt

COPY . /discordpy/

CMD [ "python3", "main.py" ]