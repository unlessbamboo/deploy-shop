1. 构建命令:

```sh
# a. 测试
docker build --no-cache --progress=plain -t vue2env:1.0 .

# b. 实际
docker build -t qzt-spider-api:1.0 .
```

2. 多段构建, 增加速度

```sh
docker build -f BaseenvDockerfile -t base-shop-api:latest .
docker build -t shop-api:v1 .

# 运行
docker run -dt --name shop-api -p 8000-8090:8000-8090 shop-api:v1
```

