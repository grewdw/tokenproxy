FROM nginx:latest

RUN rm /etc/nginx/conf.d/default.conf

COPY proxy_config.conf /etc/nginx/conf.d/

# install CertBot
RUN apt-get update && \
	apt-get -y install certbot && \
	apt-get -y install certbot python-certbot-nginx
 