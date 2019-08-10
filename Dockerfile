FROM python:3.7.4
RUN pip install mitmproxy
RUN pip install adblockparser
EXPOSE 8118
RUN mkdir /code
ADD . /code
CMD cd code && ./go -d