FROM nginx:latest

RUN rm /etc/nginx/conf.d/default.conf

COPY proxy_config.conf /etc/nginx/conf.d/