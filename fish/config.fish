function fish_prompt -d "Write out the prompt"
    # This shows up as USER@HOST /home/user/ >, with the directory colored
    # $USER and $hostname are set by fish, so you can just use them
    # instead of using `whoami` and `hostname`
    printf '%s@%s %s%s%s > ' $USER $hostname \
        (set_color $fish_color_cwd) (prompt_pwd) (set_color normal)
end

if status is-interactive
    # Commands to run in interactive sessions can go here
    set fish_greeting

end


set -gx EDITOR nvim
# set force_color_prompt yes
set -Ux EZA_STANDARD_OPTIONS --icons --hyperlink

# Fzf
set -g FZF_PREVIEW_FILE_CMD "bat --style=numbers --color=always --line-range :500"

set -g FZF_LEGACY_KEYBINDINGS 0

set -Ux FZF_DEFAULT_OPTS "\
--color=bg+:#363a4f,bg:#24273a,spinner:#f4dbd6,hl:#ed8796 \
--color=fg:#cad3f5,header:#ed8796,info:#c6a0f6,pointer:#f4dbd6 \
--color=marker:#f4dbd6,fg+:#cad3f5,prompt:#c6a0f6,hl+:#ed8796"

fish_ssh_agent

# bun
set --export BUN_INSTALL "$HOME/.bun"
set --export PATH $BUN_INSTALL/bin $PATH

#cargo
set --export CARGO_INSTALL "$HOME/.cargo"
set --export PATH $CARGO_INSTALL/bin $PATH
set --export OPENCV_LOG_LEVEL ERROR
# obsidian-rest-api 플러그인에서 생성한 뒤 적용
set --export OBSIDIAN_REST_API_KEY 68cd4b5fa5e561ef178d341b07f0e6936914f0ee6416f03ded71f330cc2bcb57

set --export NPM_PACKAGES "$HOME/.npm-packages"

set --export PATH $PATH $NPM_PACKAGES/bin

set --export MANPATH $NPM_PACKAGES/share/man $MANPATH

starship init fish | source
zoxide init fish | source

if test -f ~/.cache/ags/user/generated/terminal/sequences.txt
    cat ~/.cache/ags/user/generated/terminal/sequences.txt
end

alias pamcan=pacman

# function fish_prompt
#   set_color cyan; echo (pwd)
#   set_color green; echo '> '
# end
if status is-interactive
    # Commands to run in interactive sessions can go here
    and not set -q TMUX
    tmux ls | grep -v attached && tmux attach || tmux
end
