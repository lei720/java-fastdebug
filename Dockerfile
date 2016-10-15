FROM phusion/baseimage:0.9.19

ADD . /build

RUN sh /build/install.sh

VOLUME /root
