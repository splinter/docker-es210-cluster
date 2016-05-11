#sed 's<parameter name="localMemberHost">127.0.0.1</parameter>#<parameter name="localMemberHost">CONFIGURE THIS</parameter>#' /wso2home/wso2es-2.1.0-beta/
sed -i "s#<url>jdbc:mysql://xxx.xxx.xx.xx:#<url>jdbc:mysql://$DB_PORT_3306_TCP_ADDR:#" /wso2home/wso2es-2.1.0-beta/repository/conf/datasources/master-datasources.xml
echo "Db port is $DB_PORT"
echo "DB host is $DB_PORT_3306_TCP_ADDR"
sh /wso2home/wso2es-2.1.0-beta/bin/wso2server.sh
