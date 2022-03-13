# docker-dockerize

Dockerized Dockerize: https://github.com/larsks/dockerize

Extract only minimum required to run an app in a container

<b> An example to build grep </b>

```
FROM ghcr.io/maggie0002/dockerize as dockerize

RUN apk add grep

RUN dockerize -n -o /app/ -a $(which grep) $(which grep)

FROM alpine

COPY --from=dockerize /app .
```
