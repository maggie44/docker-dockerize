FROM python:3.10.2-alpine3.15

RUN apk add binutils git rsync --no-cache

RUN pip install git+https://github.com/larsks/dockerize.git@024b1a2b463e3244fc2ca3117b29c6ce6309b87c

ENTRYPOINT dockerize -n -o /app/ -a 
