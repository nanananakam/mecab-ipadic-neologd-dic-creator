FROM ubuntu:18.04

ADD run.sh .
RUN apt-get update &&\
    apt-get install -y mecab libmecab-dev mecab-ipadic-utf8 git make curl xz-utils file python3-pip &&\
    pip3 install awscli &&\
    chmod a+x ./run.sh

ENTRYPOINT ./run.sh