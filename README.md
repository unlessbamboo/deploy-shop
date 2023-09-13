这是个人商品管理后台项目的前后端容器化打包集, 最终构建四个容器:

- shop-nginx: 前端和静态服务器容器
- shop-api: API 后端项目, 目前包含 flask 和 gin 框架的两个包含相同 Restful 接口的服务
- shop-db: 基于 Mysql 8.0 的数据容器
- shop-redis: redis 容器

其中前端项目见[vue-shop](https://github.com/unlessbamboo/vue-shop).
