FROM alpine:latest

RUN apk update && apk add git

RUN apk add --no-cache bash

COPY entrypoint.sh entrypoint.sh

RUN ["chmod", "+x", "entrypoint.sh"]

ENTRYPOINT ["entrypoint.sh"]
