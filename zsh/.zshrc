# Enable Powerlevel10k instant prompt
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Path to your oh-my-zsh installation.
export ZSH="/Users/ErikJi/.oh-my-zsh"

### ZSH PLUGINS ###

plugins=(git)

### END PLUGINS ###

### USER CONFIGURATION ###

# p10k
source ~/powerlevel10k/powerlevel10k.zsh-theme

# Update Prompt Bypass
DISABLE_UPDATE_PROMPT="true"

# Command corrections 
ENABLE_CORRECTION="true"

# Disable Compfix
ZSH_DISABLE_COMPFIX="true"

# Enables custom shell functions
source ~/scripts/zsh_command.sh

# iTerm Shell Integration
test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

# zprof
export PATH="/usr/local/sbin:$PATH"

# sptlrx
# export SPOTIFY_COOKIE="290acc912619c829341419b5500097ee"

# sphinx-doc
export PATH="/usr/local/opt/sphinx-doc/bin:$PATH"

# fortune quotes
#echo "\e[3m$(fortune)\e[0m\n"

# cbonsai
cbonsai

# thefuck config
eval "$(thefuck --alias "frick")"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

eval $(thefuck --alias)

### END USER CONFIGURATION ###

