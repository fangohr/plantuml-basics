FROM ubuntu:16.04

RUN apt-get -y update
RUN apt-get -y install make git
RUN apt-get -y install plantuml
# for epstopdf
RUN apt-get -y install texlive-font-utils

WORKDIR /usr/local
RUN git  clone https://github.com/fangohr/plantuml-basics.git
WORKDIR /usr/local/plantuml-basics
