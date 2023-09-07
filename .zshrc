# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Use powerline
USE_POWERLINE="true"

# Enable P10K
source ~/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Aliases
# Files
alias ~="cd ~"
alias ..="cd .."
alias ls="exa -lFTL1"
alias la="exa -lFTaL1"
alias rd="rm -fdr"
# General
alias nv="nvim"
alias v="vim"
alias q="exit"
alias ght="echo \"\$GH_TOKEN\" | xclip"
# Git
alias gdw="git pull"
alias gup="git push"
alias gi="git init"
alias gc="git commit -m"
alias gs="git status"
alias ga="git add"
alias gaa="git add -A"
# Pacman
alias pmi="sudo pacman -S"
alias pmr="sudo pacman -R"
alias pmu="sudo pacman -U"
alias pmuu="sudo pacman -Syyu"
