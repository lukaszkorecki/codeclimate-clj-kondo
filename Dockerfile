FROM alpine:3.9.6

COPY ./bin/bb /usr/bin/bb
COPY ./bin/clj-kondo /usr/bin/clj-kondo

RUN mkdir -p /cc
WORKDIR /cc

COPY run.clj /cc/run.clj

CMD ['/usr/bin/bb' '/cc/run.clj']
