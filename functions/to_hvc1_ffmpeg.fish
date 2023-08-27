function to_hvc1_ffmpeg
    command echo "输出原始文件编码器信息"
    command ffprobe -hide_banner $argv[1]
    command echo "转换为HVC1"
    command ffmpeg -i $argv[1] -c:v copy -tag:v hvc1 -c:a copy $argv[2]
    command echo "转换完成，输出目标文件编码器信息"
    command ffprobe -hide_banner $argv[2]
end
