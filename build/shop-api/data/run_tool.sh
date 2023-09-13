#!/bin/bash - 

init_supervisor_env()
{
    echo "init end"
}


echo "初始化supervisor环境变量"
init_supervisor_env

echo "** Executing supervisord"
exec /usr/bin/supervisord -c /etc/supervisord.conf -n

