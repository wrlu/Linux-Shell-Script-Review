#!/bin/bash

# until循环语句
# until 测试条件
# do
# 若干命令
# done
# 当测试条件不满足的时候，就继续循环
# 测试条件满足则退出
# 相当于while的反用

# 网络编程向：EchoServer
echo "Please input a string: "
read string
# 如果输入的不是bye就继续循环
until [ $string = "bye" ]
do
	# 输入hide就不显示
	if [ $string = "hide" ]
	then
		read string
		# continue语句，意思和其他编程语言一样
		# break也是，就不举例子了
		continue
	fi
	echo "Echo: $string"
	read string
done
echo "Echo: bye"




