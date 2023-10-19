if status is-interactive
    # Commands to run in interactive sessions can go here

    # ls aliases
    alias ll="ls -alF"
    alias la="ls -A"
    alias l="ls -CF"

    # Custom aliases
    alias vim="nvim"
    alias suspend="systemctl suspend"
    alias clip="xclip -selection clipboard"
    alias idearun="java -classpath ./out/production/* Main"

    # Custom variables
    set -U SKID_IP 141.222.36.200

    # Pyenv stuff 
    set -Ux PYENV_ROOT $HOME/.pyenv
    set -U fish_user_paths $PYENV_ROOT/bin $fish_user_paths

    # Load pyenv automatically by appending
    # the following to ~/.config/fish/config.fish:

    pyenv init - | source

    # PATH stuff
    fish_add_path /opt/java/jdk-20.0.1/bin/

    # remove greeting
    set --erase fish_greeting
end

set -q GHCUP_INSTALL_BASE_PREFIX[1]; or set GHCUP_INSTALL_BASE_PREFIX $HOME ; set -gx PATH $HOME/.cabal/bin /home/oritzau/.ghcup/bin $PATH # ghcup-env