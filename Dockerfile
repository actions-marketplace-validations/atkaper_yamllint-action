FROM python:3.11.0b5-alpine

RUN apk add --update --no-cache ca-certificates git
RUN pip install yamllint

WORKDIR /src

ADD entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]

