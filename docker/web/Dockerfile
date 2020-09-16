# Based on https://github.com/laradock/laradock/blob/master/nginx/Dockerfile
FROM nginx:1.15.0-alpine

COPY ./nginx.conf /etc/nginx/
COPY ./sites/default.conf /etc/nginx/sites-available/

RUN apk update \
    && apk upgrade \
    && apk add --no-cache bash \
    && adduser -D -H -u 1000 -s /bin/bash www-data

# Set upstream conf and remove the default conf
RUN echo "upstream php-upstream { server php:9000; }" > /etc/nginx/conf.d/upstream.conf \
    && rm /etc/nginx/conf.d/default.conf

CMD ["nginx"]

EXPOSE 80
