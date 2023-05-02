FROM python:3

RUN pip install --upgrade pip
RUN pip install gunicorn
RUN pip install django
RUN pip install pylint

EXPOSE 8000/tcp

ADD ./start.sh /
WORKDIR /web-server

ENTRYPOINT [ "sh","/start.sh" ]