function status_hyprlock
  if test -e ~/.disable-hyprlock
    echo "Disabled"
  else
    echo "Enabled"
  end
end
