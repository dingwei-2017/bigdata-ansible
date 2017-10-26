#  !/bin/bash

source /tmp/BigDataConfig

echo "start bigdata-spark services"

cd $SOFTWARE_INSTALL_PATH/spark-$SPARK_VERSION-bin-hadoop${HADOOP_VERSION%.*}
echo "start all spark dameon process"
sbin/start-all.sh
if [ $? -ne 0 ]; then
  exit 1
fi

cd -

echo "success startup spark"
