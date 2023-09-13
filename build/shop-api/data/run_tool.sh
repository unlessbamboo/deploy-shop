#!/bin/bash - 


# 初始化monitor-api数据库
init_db()
{
cd /app/monitor-api && pyenv activate monitor-api && flask init_db
}

init_supervisor_env()
{
    echo "init end"
}

# proxy守护进程
run_proxy_daemon()
{
    /root/.pyenv/versions/proxy/bin/python /app/proxy/proxy.py restart
}


echo "初始化数据库"
init_db

echo "初始化supervisor环境变量"
init_supervisor_env

echo "启动代理守护进程"
run_proxy_daemon

echo "** Executing supervisord"
exec /usr/bin/supervisord -c /etc/supervisord.conf -n

