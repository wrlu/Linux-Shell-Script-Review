#!/bin/bash

# 变量类型：局部变量、环境变量，此处使用的是两个局部变量
read -p "Please input your first name:" firstname
read -p "Please input your first name:" lastname
# 使用$符号来解析变量的值，否则的话还是字面值
# 字面值
echo -e firstname=$firstname, lastname=$lastname
# 变量值
echo -e "Your full name is:" $firstname $lastname
# unset来解除一个变量，解除之后变量的值为空
unset lastname
echo -e firstname=$firstname, lastname=$lastname