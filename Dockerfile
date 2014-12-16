FROM ubuntu:latest

MAINTAINER Tim Rodger

# Install dependencies
RUN apt-get update -qq && \
    apt-get -y install \
    nodejs \
    npm

EXPOSE 80

CMD ["nodejs", "/home/src/index.js"]

# Move files into place
COPY src/ /home/src/

# Install dependencies
WORKDIR /home/src

RUN npm install
