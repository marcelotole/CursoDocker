#FROM python:3-slim
FROM alpine:3.6
RUN apk add --no-cache python py-pip
#COPY requirements.txt /usr/src
ENV FLASK_APP=app.py
WORKDIR /usr/src
COPY . /usr/src/
RUN pip install -r /usr/src/requirements.txt
CMD ["flask","run","-h","0.0.0.0"]
