#! /bin/env bash

MF=${1:-"${HOME}/myob-work/work/aws-cf/git-repo/workspaces/projects/JackySo-24x7classroom/useful-resources/devops/makefile"}
MK=${2:-"Makefile"}
LIST=`(cd $MF; ag kubectl -G Makefile -l)`

PS3="Input your choice: "
select opt in `echo "${LIST}" | grep -v .md | sed ':a;N;$!ba;s/\n/ /g'`
	do
	echo "Run help in ${opt}"; (cd ${MF}; make -sf ${opt} help 2>/dev/null; make -sf ${opt} var 2>/dev/null); break
	done
