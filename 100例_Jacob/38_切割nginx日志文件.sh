#mkdir /data/scripts
#vim /data/scripts/nginx_log.sh
#!/bin/bash
logs_path="/usr/local/nginx/logs/"
mv ${logs_path}access.log ${logs_path}access_$(date -d "yesterday" +"%Y%m%d").log
kill -USR1 `cat /usr/local/nginx/logs/nginx.pid`
# chmod +x /data/scripts/nginx_log.sh
#crontab -e #脚本写完后，将脚本放入计划任务每天执行一次脚本
0 1 * * * /data/scripts/nginx_log.sh