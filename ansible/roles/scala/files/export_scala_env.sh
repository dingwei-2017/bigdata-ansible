#  !/bin/bash

echo "export SCALA_HOME=/home/BigData/scala-2.11.11" >> ~/.bash_profile
echo -e "export PATH=\${SCALA_HOME}/bin:\$PATH" >> ~/.bash_profile

source ~/.bash_profile
