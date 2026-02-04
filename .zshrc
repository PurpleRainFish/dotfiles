# theme
eval "$(starship init zsh)"

# zoxide
eval "$(zoxide init zsh)"

bindkey -e

# history
HISTFILE=~/.zsh_history
SAVEHIST=10000
HISTSIZE=10000
setopt SHARE_HISTORY
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_IGNORE_SPACE
setopt EXTENDED_HISTORY

zshaddhistory() { whence ${${(z)1}[1]} >| /dev/null || return 1 }

# autostart
if [[ ... ]]; then
    fortune | cowsay -r | lolcat
fi


# alias
alias hyprc='nvim ~/.config/hypr/hyprland.conf'
alias zshc='nvim ~/.zshrc'
alias e='eza -F -a'
alias downloading='systemd-inhibit --what=sleep:handle-lid-switch --who="fish" --why="Downloading" --mode=block sleep infinity'

# plugins
source <(fzf --zsh)
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.zsh/catppuccin_macchiato-zsh-syntax-highlighting.zsh

zstyle ':completion:*' menu select
autoload -Uz compinit
compinit

# conda
[ -f /opt/miniforge/etc/profile.d/conda.sh ] && source /opt/miniforge/etc/profile.d/conda.sh
eval "$(mamba shell hook --shell zsh)"

if [ -f ~/.secrets ]; then
  . ~/.secrets
fi
