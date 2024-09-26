# 使用官方 Node.js 镜像作为基础镜像
FROM node:20-alpine

# 设置工作目录
WORKDIR /usr/src/app

# 安装 ghost-cli
RUN npm install -g ghost-cli

# 将你的 Ghost tgz 文件复制到容器中
COPY ./ghost/core/ghost-5.91.0.tgz /usr/src/ghost.tgz

# 安装 Ghost，使用 --archive 参数
RUN ghost install --archive /usr/src/ghost.tgz

# 默认启动命令（可根据需要修改）
CMD ["ghost", "start"]
