FROM alpine:3.12

WORKDIR /usr/local/bin
COPY cherry_test.sh .

CMD cherry_test.sh
