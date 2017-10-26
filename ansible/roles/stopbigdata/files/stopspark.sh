#  !/bin/bash

source /tmp/BigDataConfig

echo "stop bigdata-spark services"

cd $SOFTWARE_INSTALL_PATH/spark-$SPARK_VERSION-bin-hadoop${HADOOP_VERSION%.*}
echo "stop all spark dameon process"
sbin/stop-all.sh
if [ $? -ne 0 ]; then
  exit 1
fi

cd -

echo "success stop spark"
