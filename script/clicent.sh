#!/bin/bash

ip=$(ifconfig  eth1 |awk -F '[ :]+' '/inet addr/ {print $4}')

host=$(hostname)

mem="max:"$(dmidecode|grep -P 'Maximum\s+Capacity' | awk -F: '{print $2}')"number:"$(dmidecode|grep  -P  -A5  "Memory\s+Device"|grep Size|grep -v Range|sort -n | uniq -c | tr "\t" " " |sed 1q)

cpu=$(cat /proc/cpuinfo | grep name | cut -f2 -d: | uniq -c|awk '{print $1" "$2" "$3" "$4}')

disk=$(/sbin/sfdisk -s| grep sd |/sbin/sfdisk -s | grep sd |sed 's/[ ]*//g')

net_card=$(lspci |grep Ethernet | awk -F: '{print $3}'|uniq -c |awk '{print $1" "$2" "$3" "$4}')

system=$(sed -n 1p  /etc/issue | awk '{print $1"-"$3}')

model=$(dmidecode |  sed -n '/Product Name/p' | sed -n 1p|awk -F: '{print $2}' )

sn=$(dmidecode -t 1 | grep "Serial Number" | awk -F: '{print $2}'|sed 's/[ ]*//g')

time=$(date +%Y-%m-%d" "%H:%M:%S)

mysql -ud -pd -h192.168.1.105 -D cmdb -e "

INSERT INTO server VALUES ( '', \"$ip\", \"$host\", \"$mem\", \"$cpu\", \"$disk\", \"$net_card\", \"$system\", '\"$model\"', \"$sn\",\"$time\");

"

