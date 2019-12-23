FROM alpine:latest

RUN apk update && \
    apk upgrade && \
    apk add git

RUN mkdir /keys && mkdir /script
ADD git_sync.sh /script
RUN chmod +x /script/git_sync.sh

ENTRYPOINT ["/bin/sh"]

CMD ["/script/git_sync.sh"]