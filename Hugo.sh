#!/bin/sh

# 本地启动Demo
hugo server --disableFastRender
# 此处
# --disableFastRender 启用对更改的完全重新渲染
# --buildFuture 解决日期发布的时区问题
# --minify 压缩生成的静态资源
