function pwgen
  if test (count $argv) -eq 1
    command /usr/bin/pwgen $argv[1]
  else
    printf "必须按以下格式调用：\n"
    printf "pwgen <password length>"
  end
end
