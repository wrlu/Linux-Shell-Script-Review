#!/bin/bash

# while循环语句
# while 测试条件
# do
# 若干命令
# done

while [ $1 ]
do
	# 条件测试test -f 用于测试参数是否是一个文件(file)
	if test -f "$1"
	then echo "$1 is an ordinary file."
	# 条件测试test -d 用于测试参数是否是一个目录(directory)
	elif test -d "$1"
	then echo "$1 is a directory."
	# 都不是的话，就显示“不存在的文件或目录”
	else echo "$1: No such file or directory."
	fi
	# shift用于移动位置参数
	# 例如一开始是$1指向第一个参数，$2指向第二个参数
	# shift之后$1变为指向第二个参数，$2变为指向第三个参数
	# $0始终不变，永远是当前脚本名称
	# 依此类推
	shift
done