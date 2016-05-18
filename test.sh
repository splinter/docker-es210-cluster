#!/bin/bash
#a="HELLO"

#echo "$a" | awk '{print tolower($0)}'
#http://unix.stackexchange.com/questions/41406/use-a-variable-reference-inside-another-variable
getAddress () {
   local foo=$1
   local PREFIX="$"
   local POSTFIX="_PORT_9443_TCP_ADR"
   local varHost=$( echo $1 | tr [a-z] [A-Z])
   echo  $varHost$POSTFIX
}

getPort () {
  echo 'Test'
}
ES_PUB1_PORT_9443_TCP_ADR=172.0.0.1
WSO2_WK_HOST=es_pub1
RES=$(getAddress $WSO2_WK_HOST)
Q=1
eval "Q=\${$RES}"
echo "Ip $ES_PUB1_PORT_9443_TCP_ADR"
echo "This is a test $Q"
