## msysgit for windows
按如下操作，重新打开git bash就能直接使用 `tree` 命令了。

    $ cp tree.sh /bin #复制tree shell脚本到bin目录中去
    $ vi /usr/etc/profile #在文件末行添加别名
    alias tree='tree.sh'