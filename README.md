# AdminSet
<img src="https://travis-ci.org/guohongze/adminset.svg?branch=master"></img> 
<img src="https://img.shields.io/hexpm/l/plug.svg"></img>
[![release](https://img.shields.io/github/release/guohongze/adminset.svg)](https://github.com/guohongze/adminset/releases)
<br>
Adminset基于DevOps理念开发，以整合全部运维场景为己任。Adminset是一个真正的基于运维思维而开发的全自动化运维平台。<br>


##简介

Adminset 自动化运维平台：CMDB、CD、DevOps、资产管理、任务编排、持续交付、系统监控、运维管理、配置管理。Adminset 基于 DevOps 理念开发，以整合全部运维场景为己任。Adminset 是一个真正的基于运维思维而开发的全自动化运维平台。


基于Docker构建自动化运维平台Adminset镜像使用详细方法见 (https://aqzt.com/5427.html)


##项目地址

https://github.com/guohongze/adminset


##基于Docker构建自动化运维平台Adminset镜像

https://hub.docker.com/r/ppabc/adminset/

下载镜像命令：docker pull ppabc/adminset

##使用方法：

docker run -d --name adminset12 --net=host --privileged -v /var/opt:/var/opt -d ppabc/adminset

docker exec -it adminset12  /bin/bash /opt/start.sh

##访问

http://your_server_ip

自动安装的用户名admin 密码Adminset123