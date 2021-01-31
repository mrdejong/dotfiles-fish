set -U fish_user_paths $HOME/.local/bin $HOME/Applications $fish_user_paths
set fish_greeting
set TERM "xterm-256color"
set EDITOR "nvim"

function fish_user_key_bindings
  fish_vi_key_bindings
end

alias ..='cd ..'
alias ...='cd ../..'

if status --is-interactive
  set BASE16_SHELL "$HOME/.config/base16-shell/"
  source "$BASE16_SHELL/profile_helper.fish"
end

starship init fish | source
