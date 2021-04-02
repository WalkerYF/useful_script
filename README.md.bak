# useful_script
some useful script. maybe they will help you

## compare_from_input.sh
用来比较两个可执行文件在相同输入的情况下输出是否相等

输入文件默认放在/input/下的in1，in2, in3, in4.....

参数格式 (例子)

```shell
bash compare_from_input.sh 1.out 2.out 6

bash compare_from_input.sh [可执行文件1] [可执行文件2] [输入样例数量]
```


## upload.sh
每次上传到github的时候都要输三条命令是不是很烦？
用这个脚本，一次就搞定，而且commit的内容直接加在脚本之后作为参数传进来就好了，不用加-m

> 使用方法
>
> 将该脚本放在仓库根目录下
>
> bash upload.sh add a file
>
> 就相当于执行了一下三条命令
>
> git add .
>
> git commit -m "add a file"
>
> git push



## sync.sh

有多个仓库需要同步的时候可能会有点烦

这个时候sync.sh就能够帮你把当前文件夹内的所有git仓库都执行git pull 一遍

并且返回各个库的状态

注：有一个功能暂时没有实现：判断pull是否出现错误