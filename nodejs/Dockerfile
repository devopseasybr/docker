FROM ubuntu:24.10 

WORKDIR /nodejs

COPY . . 

RUN sh setup.sh

USER node

ENV PATH $PATH:/opt/nodejs/bin