FROM alpine:latest

LABEL maintainer="Cloud Posse <hello@cloudposse.com>"

LABEL "com.github.actions.name"="CRUD"
LABEL "com.github.actions.description"=""
LABEL "com.github.actions.icon"="activity"
LABEL "com.github.actions.color"="blue"

COPY entrypoint.sh /

RUN chmod 755 /entrypoint.sh \
  && apk --no-cache add bash

ENTRYPOINT ["/entrypoint.sh"]