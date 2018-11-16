#### Base OS ####
FROM phusion/baseimage:0.10.0

#### Build ####
ENV DEBIAN_FRONTEND noninteractive

#### Install Yarn ####
RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list

RUN curl -sL https://deb.nodesource.com/setup_8.x | bash -

RUN apt-get -y update
RUN apt-get -y install yarn
RUN apt-get -y install nodejs

RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

#### UI Setup ####
RUN npx create-react-app my-app
RUN cd my-app && npm start

#### Files ####
COPY scripts/run.sh /
RUN chmod +x /run.sh

#### Networking ####
#EXPOSE 8888

#### Start ####
CMD ["/bin/bash", "/run.sh"]
