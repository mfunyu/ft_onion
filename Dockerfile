FROM debian:latest

RUN apt-get -y update \
	&& apt-get -y install nginx

RUN apt-get -y install tor

EXPOSE 80/tcp
EXPOSE 4242

COPY srcs/torrc /etc/tor/torrc
COPY srcs/nginx.conf /etc/nginx/nginx.conf
COPY 

CMD ["/bin/bash", "./srcs/setup.sh"]
