FROM python:3.8

COPY . /opt/app
WORKDIR /opt/app
RUN pip install -r requirements.txt


EXPOSE 9115
ENV PYTHONUNBUFFERED 1

ENTRYPOINT python server.py
