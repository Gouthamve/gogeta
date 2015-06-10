FROM       arken/gom-base
MAINTAINER Goutham Veeramachaneni <cs14btech11014@iith.ac.in>

RUN go get github.com/arkenio/gogeta
WORKDIR /usr/local/go/src/github.com/arkenio/gogeta
#RUN git checkout v0.3.0
RUN gom install
RUN gom test
RUN gom build

EXPOSE 7777
