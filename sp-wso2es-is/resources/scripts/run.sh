echo "ES PUB1 port is $ESPUB1_PORT"
sed -i "s#<Offset>0</Offset>#<Offset>5</Offset>#" /wso2is-5.1.0/repository/conf/carbon.xml
sh /wso2is-5.1.0/bin/wso2server.sh
