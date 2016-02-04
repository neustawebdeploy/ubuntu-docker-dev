FROM ubuntu:14.04
COPY bin/install.sh /tmp/ubuntu-docker-dev-install.sh
RUN chmod +x /tmp/ubuntu-docker-dev-install.sh
RUN bash /tmp/ubuntu-docker-dev-install.sh
