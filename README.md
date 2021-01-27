# jdk13dev
JDK 13 编译环境

- 安装maven,修改maven为阿里镜像
- 修改APK 为阿里镜像

## 编译打包

```sh
docker run -i --rm -v $(pwd):/src   vincentmi/jdk13dev package
```

