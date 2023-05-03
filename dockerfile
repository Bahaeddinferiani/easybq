FROM ubuntu:20.04 

RUN apt-get update -y && \
    apt-get -y upgrade 
RUN apt-get install -y curl
COPY bqq /bqq
RUN curl -sL https://deb.nodesource.com/setup_15.x -o setup_15.sh && \
    sh ./setup_15.sh && \
    apt update -y && \
    apt install nodejs
WORKDIR /bqq
RUN npm install -g @angular/cli
RUN npm install --global yarn && \
    yarn install && \
    ng build
WORKDIR /bqq
COPY startup.sh /bqq
CMD [ "/bin/bash", "startup.sh" ]




