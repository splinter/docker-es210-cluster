FROM ubuntu:latest
FROM java:7

RUN apt-get update
RUN apt-get install -y zip

COPY resources/package/wso2is-5.1.0.zip /wso2home/wso2is-5.1.0.zip
COPY resources/scripts/run.sh /wso2home/run.sh

RUN chmod 700 /wso2home/run.sh
RUN unzip /wso2home/wso2is-5.1.0.zip

CMD /wso2home/run.sh

EXPOSE 9448
