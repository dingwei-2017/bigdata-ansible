#  !/bin/bash

source /tmp/BigDataConfig

echo "stop bigdata-hadoop services"

cd $SOFTWARE_INSTALL_PATH/hadoop-$HADOOP_VERSION
echo "stop all hadoop process"

sbin/stop-all.sh
if [ $? -ne 0 ]; then
  exit 1
fi

cd -

echo "success stop hadoop"
