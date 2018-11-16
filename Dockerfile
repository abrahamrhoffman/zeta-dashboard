#### Base OS ####
FROM phusion/baseimage:0.10.0

#### Build ####
ENV DEBIAN_FRONTEND noninteractive

#### Install Yarn ####
RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list

RUN apt-get -y update
RUN apt-get -y install yarn

RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

#### Files ####
COPY scripts/run.sh /
RUN chmod +x /run.sh

#### Networking ####
#EXPOSE 8888

#### Start ####
CMD ["/bin/bash", "/run.sh"]
