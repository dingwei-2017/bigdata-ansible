# !/bin/bash

CURDIR=$(cd `dirname $0`; pwd)
pushd ${CURDIR}/ansible > /dev/nul

echo "start up bigdata"

ansible-playbook -i hosts startup.yml  --user=BigData

popd > /dev/null

