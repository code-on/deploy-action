FROM python:3.8.3
ENV PYTHONUNBUFFERED 1


RUN pip install fabric requests
RUN mkdir ~/.ssh

ADD entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
