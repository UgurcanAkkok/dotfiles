function fish_mode_prompt
    switch $fish_bind_mode
        case default
            set_color --italic blue
            echo '<n> '
        case insert
            set_color --italic green
            echo '<i> '
        case replace_one
            set_color --italic purple
            echo '<r> '
        case visual
            set_color --italic yellow
            echo '<v> '
        case '*'
            set_color --bold red
            echo '<?> '
    end
    set_color normal
end

#vim ts:2
