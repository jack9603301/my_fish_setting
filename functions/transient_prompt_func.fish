function transient_prompt_func
    if test $transient_pipestatus[-1] -eq 0
        printf (set_color 00FF00)' '
    else
        printf (set_color blue)' '
    end
end
