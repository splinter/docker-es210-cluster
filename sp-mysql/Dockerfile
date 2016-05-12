FROM mysql:5.5

RUN apt-get update
RUN apt-get install -y unzip
RUN apt-get install -y vim
RUN mkdir wso2home

COPY dbscripts /wso2home/dbscripts
COPY init.sh /docker-entrypoint-initdb.d/init.sh
COPY my.cnf /etc/mysql/conf.d/my.cnf


EXPOSE 3306


