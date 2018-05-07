FROM centos/python-27-centos7
MAINTAINER ppabc <ppabc@qq.com>

ENV TZ "Asia/Shanghai"
COPY adminset /opt/
RUN  bash /opt/adminset/install/server/auto_install.sh
