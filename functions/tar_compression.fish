function tar_compression
  if test (count $argv) -eq 2
    command tar -zcf $argv[1] $argv[2]
  else
    printf "必须按以下格式调用：\n"
    printf "tar_compression output.tar.gz 等待压缩的目录或文件"
  end
end
