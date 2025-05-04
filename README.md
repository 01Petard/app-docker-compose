### 通过docker-compose的方式来管理项目的部署

使用指南：[🚀 容器化一键部署指南](https://01petard.github.io/blog-vue-vitepress/%E8%BD%AF%E4%BB%B6/%E5%AE%B9%E5%99%A8%E5%8C%96%E4%B8%80%E9%94%AE%E9%83%A8%E7%BD%B2%E6%8C%87%E5%8D%97.html)

简单示例：[project_folder](https://github.com/01Petard/app-docker-compose/tree/main/project_folder)

如何使用？

1. 下载Docker
2. 切换到`project_folder`目录
3. 进入命令行，运行`docker-compose up -d`

如何仿照我的最佳实践？

1. 构建一个这样的目录

   ```
   your-project/
   ├── dist/                  # 前端构建产物
   │   └── index.html
   ├── init_scripts/
   │   └── create_user.sql    # 数据库初始化脚本
   ├── logs/                  # 后端的项目日志
   │   └── ...
   ├── nginx/
   │   └── conf.d/
   │       └── default.conf   # Nginx 配置（静态 + /api 代理）
   ├── .env                   # 存储数据库和缓存的密码
   ├── app.jar                # 后端打包好的 Java 应用
   └── docker-compose.yml     # Docker Compose 编排配置
   ```

2. 修改`.env`文件中的MySQL的密码和Redis的密码，此密码是创建容器的密码

3. 修改`create_user.sql`中的MySQL的用户名和密码，此密码是给服务端和远程连接使用的

4. 进入命令行，运行`docker-compose up -d`

---

这一切本来就该这么简单～
