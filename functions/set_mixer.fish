function set_mixer
command pactl set-sink-volume @DEFAULT_SINK@ $argv
end
