#  !/bin/bash

source /tmp/BigDataConfig

echo "export HADOOP_HOME=$SOFTWARE_INSTALL_PATH/hadoop-$HADOOP_VERSION" >> ~/.bash_profile
echo -e "export HADOOP_CONF_DIR=\$HADOOP_HOME/etc/hadoop" >> ~/.bash_profile

echo "export YARN_HOME=$SOFTWARE_INSTALL_PATH/hadoop-$HADOOP_VERSION" >> ~/.bash_profile
echo -e "export YARN_CONF_DIR=\$YARN_HOME/etc/hadoop" >> ~/.bash_profile

source ~/.bash_profile
