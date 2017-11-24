#!/bin/bash

# 一些命令和符号

# echo和read
# echo默认会换一行，加了-n就不换行了
echo -n "-n代表光标不换行输出。"
# -p后面可以加一个输入的提示字符串
read -p "我是一个提示，请输入三个内容:" n1 n2 n3
# 同时用-n -e参数，也可以简写为-ne
# -e表示内容中含有转义字符
echo -n -e "$n1\n"
echo -ne "$n2\n"
echo -ne "$n3\n"
# 不加-e参数，转义字符失效
echo -n "$n1\n"
echo

# 单引号、双引号、倒引号
# 双引号括起来的字符除了$，倒引号(`)，转义字符(\)之外，都作为普通字符对待
echo "Current directory is `pwd`."
echo "Home directory is $HOME"
echo -ne "\n"

# 单引号括起来的字符都作为普通字符
# 所以`pwd`和$HOME都失效了
echo 'Current directory is `pwd`.'
echo 'Home directory is $HOME'

# 倒引号括起来的字符被Shell解释为命令行
echo "Listing files in this directory:"
echo `ls`
echo

# 可以进行命令替换，将命令的执行结果赋给变量
# 形式1:用倒引号
dir1=`pwd`
# 形式2:用$()
dir2=$(pwd)
#输出结果都相同
echo $dir1
echo $dir2

# 管道线"|"
# 管道线前一个命令的输出刚好是下一个命令的输入
ls -l | wc -l

# 后台命令，命令末尾加上&
# 后台进程的调度优先级低于前台进程
ps&

# 用分号分割命令，命令顺序执行
current=`pwd`
# 首先切换到根目录，然后显示根目录下的内容，最后再切换回当前目录
cd / ; ls -l ; cd $current
echo "Welcome back `pwd`."

# 逻辑与和逻辑或：
# 命令1 && 命令2
# 命令1执行成功才执行命令2，否则不执行命令2
ls -l README.md && echo "Found README File"
# 命令1 || 命令2
# 命令1执行失败则执行命令2，否则不执行命令2
ls -l README.md || echo "README File NOT Found !"
