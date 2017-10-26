#  !/bin/bash

source /tmp/BigDataConfig

echo "start bigdata-hadoop services"

echo "first time start hadoop, format the namenode"
cd $SOFTWARE_INSTALL_PATH/hadoop-$HADOOP_VERSION
if [ $? -ne 0 ]; then
  exit 1
fi
bin/hadoop namenode -format << EOF
Y
EOF

if [ $? -ne 0 ]; then
  exit 1
fi

echo "start hadoop dfs dameon process"
sbin/start-dfs.sh
if [ $? -ne 0 ]; then
  exit 1
fi

echo "start yarn resourcemanager process"
sbin/start-yarn.sh
if [ $? -ne 0 ]; then
  exit 1
fi

cd -

echo "success startup hadoop"
