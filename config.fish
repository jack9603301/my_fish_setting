if status is-interactive
    # Commands to run in interactive sessions can go here
    set -g theme_display_git yes
    set -g theme_display_git_dirty yes
    set -g theme_display_git_untracked 
    set -g theme_display_git_ahead_verbose yes
    set -g theme_display_git_dirty_verbose yes
    set -g theme_display_git_stashed_verbose yes
    set -g theme_display_git_default_branch yes
    set -g theme_git_default_branches master main
    set -g theme_git_worktree_support no
    set -g theme_use_abbreviated_branch_name yes
    set -g theme_display_vagrant yes
    set -g theme_display_docker_machine yes
    set -g theme_display_k8s_context yes
    set -g theme_display_hg yes
    set -g theme_display_virtualenv yes
    set -g theme_display_nix yes
    set -g theme_display_ruby yes
    set -g theme_display_node yes
    set -g theme_display_user ssh
    set -g theme_display_hostname ssh
    set -g theme_display_vi no
    set -g theme_display_date yes
    set -g theme_display_cmd_duration yes
    set -g theme_title_display_process yes
    set -g theme_title_display_path yes
    set -g theme_title_display_user yes
    set -g theme_title_use_abbreviated_path yes
    set -g theme_date_format "+%a %H:%M"
    set -g theme_date_timezone Aisa/Shanghai
    set -g theme_avoid_ambiguous_glyphs yes
    set -g theme_powerline_fonts yes
    set -g theme_nerd_fonts yes
    set -g theme_show_exit_status yes
    set -g theme_display_jobs_verbose yes
    set -g default_user jack
    set -g theme_color_scheme nord
    set -g fish_prompt_pwd_dir_length 0
    set -g theme_project_dir_length 0
    set -g theme_newline_cursor yes
    set -g theme_newline_prompt '$ '
    set -g fish_pager_color_selected_background --background="#525f42"
    #alias vi "TERM=xterm command vi"
    #alias vim "TERM=xterm command vim"
    #alias mutt "TERM=xterm-kitty command mutt" 
    export LEDGER_FILE=/home/jack/文档/账本/main.journal

    # abbr
    abbr restart_vpn ssh vyos@192.168.3.1 "\"sudo pkill -9 socat && sudo pkill -9 udptunnel && sudo pkill -9 wstunne\""
    #abbr start_wayland Hyprland
    abbr unset set -e
    abbr dd dd status=progress
    abbr rm rm -I
    abbr ll ls -l
    abbr tar tar xvf
    abbr pf lp
    abbr vscode /opt/VSCode-linux-x64/bin/code --enable-features=UseOzonePlatform --ozone-platform=wayland --enable-wayland-ime
    abbr run_nvidia prime-run
    alias run_rustup PATH="$PATH:$HOME/.cargo/bin"
    abbr gen_playlist "ls -1 \$PWD/*.mp4 > playlist.txt"
    alias suspend_mem "sudo ~/.config/suspend/mem.fish"
    alias suspend_disk "sudo ~/.config/suspend/disk.fish"
    alias anydesk "GTK_THEME=Orchis-Light /opt/anydesk/anydesk"
    abbr invoice "flatpak run com.invoiceninja.InvoiceNinja"
    abbr element "flatpak run im.riot.Riot"
    abbr whatsapp "flatpak run com.ktechpit.whatsie"
    abbr jellyfin "flatpak run com.github.iwalton3.jellyfin-media-player"
    abbr growisofs growisofs -dvd-compat -Z /dev/sr0 -f -input-charset utf-8 -R
    abbr hledger hledger --strict
    abbr xterm_start "export TERM=xterm"
    alias start_R720 "wakeonlan  24:b6:fd:f8:07:f0"
    alias stop_R720 "ssh -v root@192.168.2.20 poweroff"
    abbr task_tags_all "task export | jq '[.[].tags[]]' | jq 'unique' | jq '.[]'"
    set tty $(tty)
    if string match -r '/dev/tty1' $tty >/dev/null 2>&1
        echo Start the Wayland GUI graphical environment
        echo Launch Hyprland WM Environment
	    export LC_ALL=C
        export LANG=zh_CN.UTF-8
        dbus-launch --exit-with-session Hyprland
    else if string match -r '/dev/pts/\d+' $tty >/dev/null 2>&1
        echo Initialize fish shell from Hyprland \(or SSH\) environment
        load_nvm > /dev/stderr
    else
        echo Skip processing and go directly to bash
        set -gx LC_ALL C
	    set -gx LANG en_US.UTF-8
        bash
    end
end
