# 使用 ubuntu:22.04 作为基础镜像
FROM ubuntu:22.04

# 创建 /app 目录
WORKDIR /app

# 复制 jkclaude 和 config.json 到 /app 目录
COPY jkclaude .
COPY config.json .

# 给 jkclaude 添加可执行权限
RUN chmod +x jkclaude
RUN chmod 666 config.json

# 设置容器启动时运行的命令
CMD ["./jkclaude"]