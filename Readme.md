> 基于python+django+vue.js开发的学生成绩管理系统，开发者微信：lengqin1024

### 功能介绍

平台采用B/S结构，后端采用主流的Python语言进行开发，前端采用主流的Vue.js进行开发。

功能包括：成绩管理、学生管理、课程管理、班级管理、用户管理、日志管理、系统信息模块。


### 演示地址

http://score.gitapp.cn

演示帐号：

用户名：admin123
密码：admin123

### 主要使用技术

环境需要

- 1.运行环境：python3.8
- 2.IDE环境：pycharm+mysql5.7
- 3.数据库工具：Navicat15
- 4.硬件环境：windows 10/11 8G内存以上；或者 Mac OS；
- 5.数据库：MySql 5.7版本；

技术栈
- 后端：python+django
- 前端：vue+CSS+JavaScript+jQuery+antdesign




### 代码结构

- server目录是后端代码
- web目录是前端代码

### 部署运行

#### 后端运行步骤

(1) 安装python 3.8

(2) 安装依赖。进入server目录下，执行 pip install -r requirements.txt

(3) 安装mysql 5.7数据库，并创建数据库，命名为xxx，创建SQL如下：
```
CREATE DATABASE IF NOT EXISTS python_score DEFAULT CHARSET utf8 COLLATE utf8_general_ci
```
(4) 恢复xxx.sql数据。在mysql下依次执行如下命令：

```
mysql> use python_score;
mysql> source D:/xxx/xxx/xxx.sql;
```

(5) 启动django服务。在server目录下执行：
```
python manage.py runserver
```

#### 前端运行步骤

(1) 安装node 16.14

(2) 进入web目录下，安装依赖，执行:
```
npm install 
```
(3) 运行项目
```
npm run dev
```

#### 常见问题

- 连接后端失败怎么办？

编辑前端的constants.js文件，将base_url设置为你自己电脑的ip和端口

- 需要什么数据库版本？

本系统采用的是mysql5.7开发的，理论上5.7以上都支持

- pip安装依赖失败怎么样？

建议使用国内镜像源安装


### 付费咨询

微信（lengqin1024）

