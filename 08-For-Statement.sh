#!/bin/bash

# for循环语句
# 值表方式
# for 变量 [ in 值表 ]
# do
# 若干命令
# done
# 类似于迭代器

# 用于值表
for day in SUN MON TUE WED THU FRI SAT
do
	echo $day
done

# 用于正则表达式
# for 文件 in 文件正则表达式
# do
# 若干命令
# done
for file in *.sh
do
	ls $file
done

# 用于自动遍历位置参数
# 就不必使用shift命令了
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

# 用于算数表达式方式
# 一般形式为
# for((e1;e2;e3))
# do
# 若干命令
# done
# 和C语言中普通的三表达式for循环相同
read -p "Please input the number n: " n
for((i=1;i<=$n;i++))
do
	for((k=1;k<=i;k++))
	do
		echo -n "* "
	done
	echo
done
