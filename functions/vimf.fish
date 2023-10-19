function vimf
    set current_dir (pwd)
    cd $HOME
    set result (fzf)
    if set -q result[1]
        nvim $result $argv
    end
    cd $current_dir
end
