FROM python:3.7-alpine
MAINTAINER Maheswar Pvt Ltd

ENV PYTHONONBUFFERED 1

COPY ./requirements.txt /requirements.txt
RUN pip install -r /requirements.txt

RUN mkdir /app
WORKDIR /app
copy ./app /app

RUN adduser -D user
USER user
