### 功能

这是个人商品管理后台项目的前后端容器化打包集, 最终构建四个容器:

- shop-nginx: 前端和静态服务器容器
- shop-api: API 后端项目, 目前包含 flask 和 gin 框架的两个包含相同 Restful 接口的服务
- shop-db: 基于 Mysql 8.0 的数据容器
- shop-redis: redis 容器

其中前端项目见[vue-shop](https://github.com/unlessbamboo/vue-shop).

### ChangeLog

1. 域名跳转

因为域名和服务器的原因, 将原有的 shop.unusebamboo.top, flaskapi.unusebamboo.top, ginapi.unusebamboo.top 全部更改为 IP 直接访问, 另外将网站首页部署到一台静态服务器上, 其响应的 nginx 配置放在如下目录中:

- `SRC/main`
