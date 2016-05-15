FROM java:7

ARG WSO2_IS_PACK=wso2is-5.1.0

RUN apt-get update
RUN apt-get install -y unzip
RUN apt-get install -y vim
RUN mkdir wso2home

COPY /pack/wso2is-5.1.0.zip /wso2home
COPY run.sh /wso2home/

WORKDIR /wso2home/
RUN unzip wso2is-5.1.0.zip
RUN rm wso2is-5.1.0.zip

COPY /configs/sso-idp-config.xml  /wso2home/wso2is-5.1.0/repository/conf/identity/sso-idp-config.xml


RUN chmod 700 run.sh

CMD /wso2home/run.sh