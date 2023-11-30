function openf
    set current_dir (pwd)
    cd $HOME
    set result (fzf)
    if set -q result[1]
        open $result $argv & disown
    end
    cd $current_dir
end
