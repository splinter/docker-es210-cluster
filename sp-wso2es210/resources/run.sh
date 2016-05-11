local_ip=$(ip route get 1 | awk '{print $NF;exit}')

echo 'Replacing ip with : $local_ip'
echo 'IS IP is $IS_PORT'

sed -i "s/localhost/$local_ip/g" wso2es-2.1.0-beta/repository/conf/identity/sso-idp-config.xml

sh wso2es-2.1.0-beta/bin/wso2server.sh
