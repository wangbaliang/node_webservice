# 项目代码部署说明

## 系统软件准备

1. 安装NodeJS。参考：http://gitlab.easytech-main.com/webdev/doc/blob/master/team/nodejs.md
2. 安装cnpm。参考：https://npm.taobao.org/

## 测试环境

1. 进入部署目录：
```
cd /usr/ET/project
```
2. 获取本项目代码，并切换到指定分支(这里以develop为例，请根据实际情况修改)：
```
git clone http://gitlab.easytech-main.com/webdev/et-tutor-web.git
git checkout develop
```
3. 获取学习中心前端代码，并切换到指定分支(这里以develop为例，请根据实际情况修改)：
```
git clone http://gitlab.easytech-main.com/webdev/mh_project.git
git checkout develop
```
4. 关联学习中心代码：
```
cd et-tutor-web/public
ln -s /usr/ET/project/mh_project uc_s
cd -
```
5. 安装依赖：
```
cd mh_project
cnpm i
cnpm run build
cd -
cd et-tutor-web
cnpm i
cd -
```
6. 运行网站：
```
cd et-tutor-web
cnpm run dev
```
