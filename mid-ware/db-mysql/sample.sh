docker run \
-p 3306:3306 \
--name mysql \
--restart=always \
-e TZ="Asia/Shanghai" \
-e MYSQL_ROOT_PASSWORD=root \
-v /opt/shoulder/mysql/log:/var/log/mysql \
-v /opt/shoulder/mysql/conf:/etc/mysql \
-v /opt/shoulder/mysql/data:/var/lib/mysql \
-d mysql

# 快速创建一个 mysql、root密码为 root、崩溃自动重启、配置文件、数据文件、日志文件都映射到宿主机，以便于迁移