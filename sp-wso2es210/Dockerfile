FROM ubuntu:latest
FROM java:7

RUN apt-get update
RUN apt-get install -y zip

#WORKDIR /resources/pack/
COPY resources/pack/wso2es-2.1.0.zip /wso2home/wso2es-2.1.0.zip
COPY resources/run.sh /wso2home/run.sh

RUN cd /wso2home
RUN unzip /wso2home/wso2es-2.1.0.zip
RUN chmod 700 /wso2home/run.sh
CMD /wso2home/run.sh
#CMD wso2es-2.1.0/bin/wso2server.sh
#CMD ls /wso2home 



EXPOSE 9443

