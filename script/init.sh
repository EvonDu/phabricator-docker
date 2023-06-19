#!/bin/bash
sleep 5s # 等待数据库先启动
service ssh start
/usr/sbin/sshd -f /opt/phabricator_ssh/sshd_config.phabricator
/opt/phabricator/bin/phd start
apachectl -D FOREGROUND