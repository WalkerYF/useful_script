# useful_script
some useful script. maybe they will help you

## compare_from_input.sh
用来比较两个可执行文件在相同输入的情况下输出是否相等
输入文件默认放在/input/下的in1，in2, in3, in4.....
参数格式
bash compare_from_input.sh 1.out 2.out 6
bash compare_from_input.sh 可执行文件1 可执行文件2 输入样例数量


## upload.sh
每次上传到github的时候都要输三条命令是不是很烦？
用这个脚本，一次就搞定，而且commit的内容直接加在脚本之后作为参数传进来就好了，不用加-m
