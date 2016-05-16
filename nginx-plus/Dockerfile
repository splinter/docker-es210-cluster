# Image built using tutorial provided at: https://www.nginx.com/blog/deploying-nginx-nginx-plus-docker/

FROM ubuntu:14.04


# Set the debconf front end to Noninteractive
RUN echo 'debconf debconf/frontend select Noninteractive' | debconf-set-selections

RUN apt-get update && apt-get install -y -q wget apt-transport-https

# Download certificate and key from the customer portal (https://cs.nginx.com)
# and copy to the build context
ADD /license/nginx-repo.crt /etc/ssl/nginx/
ADD /license/nginx-repo.key /etc/ssl/nginx/

# Get other files required for installation
RUN wget -q -O /etc/ssl/nginx/CA.crt https://cs.nginx.com/static/files/CA.crt
RUN wget -q -O - http://nginx.org/keys/nginx_signing.key | apt-key add -
RUN wget -q -O /etc/apt/apt.conf.d/90nginx https://cs.nginx.com/static/files/90nginx

RUN printf "deb https://plus-pkgs.nginx.com/ubuntu `lsb_release -cs` nginx-plus\n" >/etc/apt/sources.list.d/nginx-plus.list

# Install NGINX Plus
RUN apt-get update && apt-get install -y nginx-plus

# forward request logs to Docker log collector
RUN ln -sf /dev/stdout /var/log/nginx/access.log
RUN ln -sf /dev/stderr /var/log/nginx/error.log

COPY es.pub.conf /etc/nginx/conf.d/es.pub.conf

# Copy the SSL certificate and key
COPY certs/server.crt /etc/nginx/ssl/server.crt
COPY certs/server.key /etc/nginx/ssl/server.key

RUN apt-get update
RUN apt-get install -y vim

EXPOSE 80 443

CMD ["nginx", "-g", "daemon off;"]
