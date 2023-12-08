FROM debian:latest

RUN apt-get -y update \
	&& apt-get -y install nginx

RUN apt-get -y install tor

EXPOSE 80/tcp
EXPOSE 4242

WORKDIR etc

COPY srcs/torrc tor/torrc
COPY srcs/nginx.conf nginx/nginx.conf
COPY srcs/index.html /var/www/html/index.html
COPY srcs/setup.sh ./setup.sh

ENTRYPOINT [ "./setup.sh" ]
