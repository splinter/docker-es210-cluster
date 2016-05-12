# Update the hostname of the datasource
sed -i "s#<url>jdbc:mysql://xxx.xxx.xx:#<url>jdbc:mysql://$DB_PORT_3306_TCP_ADDR:#" /wso2home/wso2es-2.1.0-beta/repository/conf/datasources/master-datasources.xml

# Update the localMemberHost - Hostname of the current node
echo "localMemberHost is $WSO2_LOCAL_MEMBER_HOST"
sed -i "s#<parameter name=\"localMemberHost\">xxx.xxx.xx</parameter>#<parameter name=\"localMemberHost\">$WSO2_LOCAL_MEMBER_HOST</parameter>#" /wso2home/wso2es-2.1.0-beta/repository/conf/axis2/axis2.xml

# Update the  localMemberPort - Port used by the current node to communicate with the cluster
echo "localMemberPort is $WSO2_LOCAL_MEMBER_PORT"
sed -i "s#<parameter name=\"localMemberPort\">xxxx</parameter>#<parameter name=\"localMemberPort\">$WSO2_LOCAL_MEMBER_PORT</parameter>#" /wso2home/wso2es-2.1.0-beta/repository/conf/axis2/axis2.xml

# Update the well known member host - This should be hostname of the other node
echo "Well known host name  is $WSO2_WK_MEMBER_HOST"
sed -i "s#<hostName>xxx.xxx.xx</hostName>#<hostName>$WSO2_WK_MEMBER_HOST</hostName>#" /wso2home/wso2es-2.1.0-beta/repository/conf/axis2/axis2.xml

# Update the carbon.xml with the host name
echo "Carbon host name is $WSO2_CARBON_HOST"
sed -i "s#<HostName>xxx.xxx.xx</HostName>#<HostName>$WSO2_CARBON_HOST</HostName>#" /wso2home/wso2es-2.1.0-beta/repository/conf/carbon.xml

# Start the server
sh /wso2home/wso2es-2.1.0-beta/bin/wso2server.sh
