FROM centos/python-27-centos7
MAINTAINER ppabc <ppabc@qq.com>

ENV TZ "Asia/Shanghai"
COPY * /opt/
RUN  bash /opt/adminset/install/server/auto_install.sh
