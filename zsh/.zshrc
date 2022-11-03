if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="amuse"
plugins=(git zsh-autosuggestions)
source $ZSH/oh-my-zsh.sh
source ~/.zsh_profile
# bun completions
[ -s "/Users/ricardo/.bun/_bun" ] && source "/Users/ricardo/.bun/_bun"
# Bun
export BUN_INSTALL="/Users/ricardo/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
# Bun
export BUN_INSTALL="/Users/ricardo/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
