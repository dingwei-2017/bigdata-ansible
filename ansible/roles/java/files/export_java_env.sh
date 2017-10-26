#  !/bin/bash

source /tmp/BigDataConfig

echo "export JAVA_HOME=$SOFTWARE_INSTALL_PATH/jdk$JAVA_VERSION" >> ~/.bash_profile
echo -e "export PATH=\${JAVA_HOME}/bin:\$PATH" >> ~/.bash_profile

echo -e "export CLASSPATH=.:\${JAVA_HOME}/lib/dt.jar:\${JAVA_HOME}/lib/tools.jar" >> ~/.bash_profile

source ~/.bash_profile
