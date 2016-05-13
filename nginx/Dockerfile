FROM nginx

COPY es.pub.conf /etc/nginx/conf.d/es.pub.conf

# Copy the SSL certificate and key
COPY certs/server.crt /etc/nginx/ssl/server.crt
COPY certs/server.key /etc/nginx/ssl/server.key

RUN apt-get update
RUN apt-get install -y vim