function burner_dvdrw_from_iso
  echo "检查DVD+RW刻录机数据..."
  echo "run dvd+rw-mediainfo /dev/sr0"
  command dvd+rw-mediainfo /dev/sr0
  echo "开始刻录..."
  echo growisofs -Z /dev/sr0=$argv
  command growisofs -Z /dev/sr0=$argv
end
