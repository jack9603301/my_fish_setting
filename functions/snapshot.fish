function snapshot
  if test (count $argv) -eq 1
    command sudo btrfs subvolume snapshot -r $argv[1] $argv[1].snapshot/$(date +%Y%m%d-%H%M%S)
    command sudo grub-mkconfig -o /boot/grub/grub.cfg
  else
    printf "必须按以下格式调用：\n"
    printf "snapshot /path/"
  end
end
