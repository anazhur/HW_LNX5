#!/bin/bash

	for i in {1..10};
	do
	echo "$(date +"%T") $(ps -e | wc -l)" >> /opt/260324_morning/azhur/output.txt
	# sleep 1
	done
cat/proc/cpuinfo > /opt/260324_morning/azhur/cpuinfo.txt
grep ^NAME= /etc/os-release >> /opt/260324_morning/azhur/osinfo.txt
grep ^NAME= /etc/os-release | cut -d'=' -f2 | tr -d '"' >> /opt/260324_morning/azhur/osname.txt

	for i in $(seq 50 100);
	do
	touch /opt/260324_morning/azhur/$i.txt
	done

