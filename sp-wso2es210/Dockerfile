FROM ubuntu:latest
FROM java:7

RUN apt-get update
RUN apt-get install -y zip

#WORKDIR /resources/pack/
COPY resources/pack/wso2es-2.1.0-beta.zip /wso2home/wso2es-2.1.0-beta.zip
COPY resources/run.sh /wso2home/run.sh

RUN cd /wso2home
RUN unzip /wso2home/wso2es-2.1.0-beta.zip
RUN chmod 700 /wso2home/run.sh
CMD /wso2home/run.sh
#CMD wso2es-2.1.0-beta/bin/wso2server.sh
#CMD ls /wso2home 



EXPOSE 9443

