FROM python:3.8.3
ENV PYTHONUNBUFFERED 1

LABEL "com.github.actions.name"="Deploy action"
LABEL "com.github.actions.description"="Run fab commands and more"
LABEL "com.github.actions.icon"="terminal"

RUN pip install fabric requests
RUN mkdir ~/.ssh

ADD entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
