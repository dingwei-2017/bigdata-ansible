# !/bin/bash

echo "CurrPath=`pwd`"
CUR_DIR=$(cd `dirname $0`; pwd)

source $CUR_DIR/../common/BigDataConfig


echo "1 create scala varfile"
echo "---" > ${CUR_DIR}/../../roles/scala/vars/main.yml
echo "SCALA_VERSION: $SCALA_VERSION" >> ${CUR_DIR}/../../roles/scala/vars/main.yml
#echo ""

