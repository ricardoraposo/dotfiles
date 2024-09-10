plugins=(git vi-mode)
source $HOME/.oh-my-zsh/oh-my-zsh.sh
source $HOME/.zsh_profile
source $HOME/.zsh_tokens

export OS="mac"
export EDITOR="nvim"
export NOTES="$HOME/Documents/zet"
export SCRIPTS="$HOME/.dotfiles/scripts"
export ZSH_COMPDUMP="$HOME/.cache/zsh/zcompdump"
export BUN_INSTALL="$HOME/.bun"
export NVM_DIR="$HOME/.nvm"
export DOTNET_ROOT=/usr/local/share/dotnet
export GOPATH="$HOME/.local/bin/go"

export PATH="$PATH:$GOPATH/bin"
export PATH="$PATH:/usr/local/go/bin"
export PATH="$PATH:$HOME/.local/bin"
export PATH="$BUN_INSTALL/bin:$PATH"
export PATH="$SCRIPTS:$PATH"

if test -d "$HOME/.datagrip"; then
  export PATH="$PATH:$HOME/.datagrip/bin"
fi

# completions
complete -C z z
complete -C kee kee
complete -C tice tice

[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm

# bun completions
[ -s "/Users/ricardo/.bun/_bun" ] && source "/Users/ricardo/.bun/_bun"

# pnpm
export PNPM_HOME="/Users/ricardo/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end


# Load Angular CLI autocompletion.
source <(ng completion script)

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/ricardo/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/ricardo/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/ricardo/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/ricardo/google-cloud-sdk/completion.zsh.inc'; fi

# opam configuration
[[ ! -r /Users/ricardo/.opam/opam-init/init.zsh ]] || source /Users/ricardo/.opam/opam-init/init.zsh  > /dev/null 2> /dev/null

eval "$(starship init zsh)"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
