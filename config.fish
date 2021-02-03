set -U fish_user_paths $HOME/.cargo/bin $HOME/.local/bin $HOME/Applications $fish_user_paths
set fish_greeting
set TERM "xterm-256color"
set EDITOR "nvim"

set FZF_DEFAULT_COMMAND "ag -p ~/.gitignore -g \"\""

alias ..='cd ..'
alias ...='cd ../..'
alias vc="nvim $HOME/.config/nvim"

fish_default_key_bindings

if status --is-interactive
  set BASE16_SHELL "$HOME/.config/base16-shell/"
  source "$BASE16_SHELL/profile_helper.fish"
end

source ~/.asdf/asdf.fish

starship init fish | source
