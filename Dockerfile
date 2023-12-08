FROM debian:latest

RUN apt-get -y update \
	&& apt-get -y install nginx tor openssh-server

EXPOSE 80 4242

RUN useradd -m -s /bin/bash user \
	&& echo "user:pass" | chpasswd

WORKDIR etc

COPY srcs/torrc /etc/tor/torrc
COPY srcs/sshd_config /etc/ssh/sshd_config
COPY srcs/nginx.conf /etc/nginx/nginx.conf
COPY srcs/index.html /var/www/html/index.html
COPY srcs/setup.sh /etc/setup.sh

ENTRYPOINT [ "./setup.sh" ]
