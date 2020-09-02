## 服务网络布局

为了更安全、可靠地维护服务器上的各种服务，我们需要对服务进行网络分层与划分，将不同层次的服务划分在不同的网络层次中，保证不会反向访问，让网络布局更清晰、网络更安全。

如 mysql、kafka 等基础中间件层网络的容器不应该相互访问，且这些容器不能访问上传应用的网络，否则万一某个中间件出现严重入侵漏洞，可能导致其他基础设施或上层应用受到更大地侵害。


## 文件目录统一

为了方便维护这些服务，最好有相似的路径，如 `/opt/infrastructure/mysql`、`/opt/infrastructure/redis`，且每个中间件下的日志、配置文件、状态数据应该有相似的目录名称，以更好的维护、迁移等。

- 这里都将采用 `/opt/shoulder/xxx` 这个目录作为xxx的安装部署目录
- `/opt/shoulder/xxx/sample.sh` 一行命令通过官方镜像构建运行一个单实例的进程
- `/opt/shoulder/xxx/2/docker-compose` 通过官方镜像构建运行一组分别为主、从节点的2个容器
- `/opt/shoulder/xxx/3/docker-compose` 通过官方镜像构建运行一组简单分布式的3个容器
- `/opt/shoulder/xxx/yyy/docker-compose` 更多分布式部署方案
- 统一配置文件夹路径 `/opt/shoulder/xxx/conf`
- 统一日志文件夹路径 `/opt/shoulder/xxx/log`
- 统一数据文件夹路径 `/opt/shoulder/xxx/data`
- 统一说明文件 `/opt/shoulder/xxx/README.md`

实际中可以自行调整

## 其他设置

- 国内 docker 镜像源加速
- 统一默认日志文件大小、数量
- 统一时区，采用本机时区
