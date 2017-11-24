#!/bin/bash

# case结构
echo "Please choose a number (1-3):"
read choose
# case语句相当于我们常认识的switch
case $choose in
# 匹配的时候方式是：模式字符串)
# 最终使用;;结尾
1) echo "You choose number 1.";;
2) echo "You choose number 2.";;
3) echo "You choose number 2.";;
esac
