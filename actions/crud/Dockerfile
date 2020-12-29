FROM alpine:3.12

LABEL maintainer="Cloud Posse <hello@cloudposse.com>"

LABEL "com.github.actions.name"="CRUD"
LABEL "com.github.actions.description"=""
LABEL "com.github.actions.icon"="activity"
LABEL "com.github.actions.color"="blue"

COPY entrypoint.sh /

RUN chmod 755 /entrypoint.sh \
  && apk --no-cache add bash git

ENV GIT_COMMITTER_NAME="Cloud Posse"
ENV GIT_COMMITTER_EMAIL="hello@cloudposse.com"

ENTRYPOINT ["/entrypoint.sh"]