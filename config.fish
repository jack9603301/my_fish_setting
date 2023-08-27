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
    set -gx TERM xterm

    # abbr
    abbr restart_vpn ssh vyos@192.168.3.1 "\"sudo pkill -9 socat && sudo pkill -9 udptunnel && sudo pkill -9 wstunne\""
    #abbr start_wayland Hyprland
    abbr unset set -e
    abbr dd dd status=progress
    abbr rm rm -I
    abbr ll ls -l
    abbr tar tar xvf
    abbr pf lp
    abbr run_nvidia prime-run

    set tty $(tty)
    if string match -r '/dev/tty1' $tty >/dev/null 2>&1
        echo Start the Wayland GUI graphical environment
        echo Launch Hyprland WM Environment
        dbus-launch --exit-with-session Hyprland
    else if string match -r '/dev/pts/\d+' $tty >/dev/null 2>&1
        echo Initialize fish shell from Hyprland \(or SSH\) environment
    else
        echo Skip processing and go directly to bash
        bash
    end
end
