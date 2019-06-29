function fish_prompt
    printf '%s@%s: %s\n  >>> %s ' (set_color -o cyan)(whoami) (hostname | cut -d . -f 1) (set_color -o white)(pwd)(set_color normal) (if test (id -u) -eq 0;echo '#';else; echo '$';end)
end
