#!/bin/bash

# 数值运算
echo Please input 2 number:
# 输入两个数
read -p "First Num:" num1
read -p "Second Num:" num2
# 注意，在Shell编程中空格是敏感的
# 不要随意输入空格，空格分割之后就可能变成命令
# 取表达式的值要用 $((表达式))，否则的话会当做命令
# 还可以用let，这里就不介绍了
total=$((num1*num2))
wrong=$($num1*$num2)
wrong = $((num1*num2))
# 上面的两个语句都会出错
# 03-Calculate.sh: line 12: a*b: command not found
# 03-Calculate.sh: line 13: total: command not found

# 输出结果
#在echo中字符串可以不用双引号括起来，但是要注意不能随便用空格，否则有些字符可能会变成命令
echo "$num1 * $num2 = $total"