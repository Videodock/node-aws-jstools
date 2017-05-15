FROM node:7.8-alpine
MAINTAINER Videodock <tech@videodock.com>

RUN apk update && apk upgrade

# update vim and wget only for in container editing
RUN apk --update add python-dev curl git && rm /var/cache/apk/*

RUN npm install grunt-cli bower -g

RUN curl -O https://bootstrap.pypa.io/get-pip.py
RUN python get-pip.py
RUN pip install awscli