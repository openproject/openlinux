openlinux
=========
<hr>
simple the linux develop environment config
---------
<hr>

使用方法：

1.下载openLinux到本地，保存为文件夹.openlinux

<!--lang:shell-->

    git clone https://github.com/openproject/openlinux.git ~/.openlinux

2.配置.openrc, 在~/.bashrc中末尾处提交如下代码：

<!--lang:shell-->

    if [ -f ~/.openlinux/.openrc ]; then
        . ~/.openlinux/.openrc
    fi

3.执行一下Install.sh：

<!--lang:shell-->

    ./Install.sh
