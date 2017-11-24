#!/bin/bash

# Shell函数
# [function] 函数名()
# {
#	 若干命令
# }
# 函数遵循先定义，后调用的原则

# 显示文件的函数
# 形参也相当于通过命令行参数的方式传递
# 使用方法和使用命令行参数一样
function listFile()
{
	for arg in $*
	# 也可以简写成：for arg
	do
		# 条件测试test -f 用于测试参数是否是一个文件(file)
		if test -f "$arg"
		then echo "$1 is an ordinary file."
		# 条件测试test -d 用于测试参数是否是一个目录(directory)
		elif test -d "$arg"
		then echo "$arg is a directory."
		# 都不是的话，就显示“不存在的文件或目录”
		else echo "$arg: No such file or directory."
		fi
	done
}

read -p "Start list file ? [Y/N]" choice
if [ $choice = "y" -o $choice = "Y" ]
# 调用函数并将所有控制台参数，作为实参传递给函数
then listFile $*
else echo "bye"
fi



