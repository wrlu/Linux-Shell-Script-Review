#!/bin/bash

#Bash变量

# $#：除了脚本名外，命令行上参数的个数
echo $#

# $?：上一条前台命令执行后的返回值（退出码）
echo $?

# $$：当前进程的进程号
echo $$

# $$：上一个后台命令的进程号
echo $!

# $*：在命令行上给出的所有实参的内容
# $n：代表命令行上第n个参数，$0自然就是当前脚本名称
echo $*
echo $0

# $@：和$*大概相同，不过是逐个返回
echo $@

# 其他常用环境变量
# HOME：用户主目录的全路径名
echo $HOME

# LOGNAME：用户注册名
echo $LOGNAME

# PWD：当前工作路径
echo $PWD

# PATH：Shell查找命令的路径列表，各个目录用:隔开
echo $PATH
