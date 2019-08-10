FROM python:3.7.4

RUN pip install mitmproxy
RUN pip install adblockparser
EXPOSE 8118
VOLUME /ca
RUN mkdir /code
VOLUME /code/flows
ADD . /code
RUN rm -f /code/easylists/*

CMD cd code && ./go -d