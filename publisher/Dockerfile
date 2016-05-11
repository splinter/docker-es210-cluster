FROM java:7

ARG WSO2_ES_PACK=wso2es-2.1.0-beta

RUN apt-get update
RUN apt-get install -y unzip
RUN mkdir wso2home

COPY /pack/wso2es-2.1.0-beta.zip /wso2home
COPY run.sh /wso2home/

WORKDIR /wso2home/
RUN unzip wso2es-2.1.0-beta.zip

COPY /configs/master-datasources.xml /wso2home/${WSO2_ES_PACK}/repository/conf/datasources/master-datasources.xml
COPY /db-drivers/mysql-connector-java-5.1.38-bin.jar /wso2home/${WSO2_ES_PACK}/repository/components/lib 

RUN chmod 700 run.sh

CMD /wso2home/run.sh

