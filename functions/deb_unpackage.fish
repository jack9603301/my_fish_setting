function deb_unpackage
    if test (count $argv) -eq 1
        command ar p $argv[1] data.tar.xz | tar xJvf -
    else
        printf "必须按以下格式调用：\n"
        printf "deb_unpackage xxx.deb等deb文件"
     end
end
