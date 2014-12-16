FROM ubuntu:latest

MAINTAINER Tim Rodger

# Install dependencies
RUN apt-get update -qq && \
    apt-get -y install \
    nodejs \
    npm

EXPOSE 80

CMD ["nodejs", "/home/web/index.js"]

# Move files into place
COPY web/ /home/web/

# Install dependencies
WORKDIR /home/web

RUN npm install
