function emerge-update-system -d "Upgrade all packages of the system"
    if test $argv && test $argv[1] = "--sync"
        sudo emerge --ask --verbose $argv
    end
    sudo emerge --ask --verbose --update --changed-use --newuse --deep --with-bdeps=y @world
end
