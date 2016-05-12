# Change the MAX CONNECTIONs
mysql -u root "-proot" -e "set global max_connections = 1000;"
echo "Setting max connections to 1000"
mysql -u root "-proot" -e "show variables like 'max_connections'"


mysql -u root "-proot" -e "create database ES_carbondb; \
use ES_carbondb; \
source /wso2home/dbscripts/mysql.sql; \
grant all on ES_carbondb.* TO root@'xxx.xxx.xxx.xxx' identified by 'root';"
 
mysql -u root "-proot" -e "create database ES_regdb; \
#use ES_regdb; \ 
#source /wso2home/dbscripts/mysql.sql; \ 
#grant all on ES_regdb.* TO root@'xxx.xxx.xx.xx' identified by 'root';"
 
mysql -u root "-proot" -e "create database ES_Identitydb; \
use ES_Identitydb; \
source /wso2home/dbscripts/identity/mysql.sql; \
grant all on ES_Identitydb.* TO root@'xxx.xxx.xx.xx' identified by 'root';"
 
mysql -u root "-proot" -e "create database ES_Socialdb; \
use ES_Socialdb; \
source /wso2home/dbscripts/social/mysql/resource.sql; \
grant all on ES_Socialdb.* TO root@'xxx.xxx.xx.xx' identified by 'root';"
 
mysql -u root "-proot" -e "create database ES_Storagedb; \
use ES_Storagedb; \
source /wso2home/dbscripts/storage/mysql/resource.sql; \
grant all on ES_Storagedb.* TO root@'xxx.xxx.xx.xx' identified by 'root';"
 
mysql -u root "-proot" -e "create database ES_umdb; \
use ES_umdb; \
source /wso2home/dbscripts/mysql.sql; \
grant all on ES_umdb.* TO root@'xxx.xxx.xx.xx' identified by 'root';"


#Debugging
echo "Completed executing the start up script"
mysql -u root "-proot" -e "show variables like 'max_connections'"

