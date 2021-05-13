FROM tiangolo/uwsgi-nginx-flask:python3.8

MAINTAINER rpi4.chengguan@gmail.com

# copy over our requirements.txt file
#COPY requirements.txt /tmp/

# upgrade pip and install required python packages
#RUN pip install -U pip
#RUN pip install -r /tmp/requirements.txt

WORKDIR /app

ADD . /app

RUN pip install --trusted-host pypi.python.org -r requirements.txt

EXPOSE 80

ENV NAME myflask
