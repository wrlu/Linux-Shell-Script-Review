#!/bin/bash

# Shell中的IF语句
# 使用方法：
# if 测试条件
# then 命令1
# elif 测试条件
# then 命令2
# else 命令3
# fi
# 和其他编程语言一样，只有if和fi是必须的，elif和else都是可选的

# 条件测试test -f 用于测试参数是否是一个文件(file)
if test -f "$1"
then echo "$1 is an ordinary file."
# 条件测试test -d 用于测试参数是否是一个目录(directory)
elif test -d "$1"
then echo "$1 is a directory."
# 都不是的话，就显示“不存在的文件或目录”
else echo "$1: No such file or directory."
fi

#-n使得光标不换行
echo -n "Please input a number(1-10):"
#读取数字到变量a
read a

# 使用[]里面包含一个条件表达式
# 注意[]和里面的条件之间要有空格，不然会识别为命令
if [ $a -lt 1 -o $a -gt 10 ]
then echo "The number out of range."
exit 2
# -eq代表数值上相等
elif [ $a -eq 5 ]
then echo "=5"
# -gt代表数值上大于
elif [ $a -gt 5 ]
then echo ">5"
# -lt代表数值上小于
elif [ $a -lt 5 ]
then echo "<5"
fi
# 注意：数值比较不要用运算符进行比较
# 因为运算符是用于比较字符串的

#-n使得光标不换行
echo -n "Please input a string:"
#读取数字到变量b
read b

# 用运算符进行字符串比较
# 必须加空格，不能用$b="bye"这样，会有问题
if [ $b = "bye" ]
then echo "Not to say goodbye."

elif [ $b != "bye" ]
then echo "Okay~"

fi

