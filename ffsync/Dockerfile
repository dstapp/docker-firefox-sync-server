FROM alpine:latest
RUN apk update && \
    apk add git python python-dev py-pip g++ sqlite build-base && \
    pip install virtualenv && \
    rm -rf /var/cache/apk/*

RUN git clone https://github.com/mozilla-services/syncserver && \
    cd /syncserver && make build

VOLUME ["/data"]

ADD entry.sh /entry.sh
RUN chmod +x /entry.sh 

ENTRYPOINT ["/entry.sh"]

