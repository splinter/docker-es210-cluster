FROM java:7

ARG WSO2_ES_PACK=wso2es-2.1.0-beta

RUN apt-get update
RUN apt-get install -y unzip
RUN apt-get install -y vim
RUN mkdir wso2home

COPY /pack/wso2es-2.1.0-beta.zip /wso2home
COPY run.sh /wso2home/

WORKDIR /wso2home/
RUN unzip wso2es-2.1.0-beta.zip
RUN rm wso2es-2.1.0-beta.zip

COPY /certs/server.crt ${WSO2_ES_PACK}/repository/resources/security/server.crt
COPY /certs/server.key ${WSO2_ES_PACK}/repository/resources/security/server.key

WORKDIR /wso2home/${WSO2_ES_PACK}/repository/resources/security/
RUN keytool -import -alias wso2es -file server.crt -keystore client-truststore.jks -storepass wso2carbon -noprompt
WORKDIR /wso2home/

COPY /configs/master-datasources.xml /wso2home/${WSO2_ES_PACK}/repository/conf/datasources/master-datasources.xml
COPY /db-drivers/mysql-connector-java-5.1.38-bin.jar /wso2home/${WSO2_ES_PACK}/repository/components/lib 
COPY /configs/user-mgt.xml /wso2home/${WSO2_ES_PACK}/repository/conf/user-mgt.xml
COPY /configs/registry.xml /wso2home/${WSO2_ES_PACK}/repository/conf/registry.xml
COPY /configs/axis2.xml /wso2home/${WSO2_ES_PACK}/repository/conf/axis2/axis2.xml
COPY /configs/carbon.xml /wso2home/${WSO2_ES_PACK}/repository/conf/carbon.xml

RUN chmod 700 run.sh

CMD /wso2home/run.sh

