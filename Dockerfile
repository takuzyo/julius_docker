FROM ubuntu:latest

WORKDIR /sandbox/julius-kits

RUN apt update && \
    apt install -y git gcc make && \
    cd /sandbox/julius-kits && \
    git clone https://github.com/julius-speech/julius && \
    cd julius && \
    ./configure --enable-words-int && \
    make && make install && \
    git clone https://github.com/julius-speech/grammar-kit.git

