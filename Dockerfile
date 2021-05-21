# syntax=docker/dockerfile:1
FROM tiangolo/uwsgi-nginx-flask:python3.8

MAINTAINER rpi4.chengguan@gmail.com

# Setting up timezone
ENV TZ=Asia/Singapore
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

WORKDIR /app

ADD . /app

RUN pip install --trusted-host pypi.python.org -r requirements.txt

EXPOSE 80

ENV NAME myflask