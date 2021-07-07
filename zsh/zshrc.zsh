# To revert option to default settings (for scripting etc):
# emulate -LR zsh

if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Set vi bindings instead of default emacs
bindkey -v

source ~/config/zsh/ohmyzsh.zsh
source ~/config/zsh/my-custom-code.zsh
# source ~/config/zsh/conda.zsh

source ~/.powerlevel10k/powerlevel10k.zsh-theme
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

plugins=(git zsh-autosuggestions zsh-syntax-highlighting)
source ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

setopt CORRECT
setopt CORRECT_ALL

export PATH="/usr/local/sbin:$PATH"

# Yarn global path
#
export PATH="$(yarn global bin):$PATH"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export JAVA_HOME=$(/usr/libexec/java_home)
export GPG_TTY=/dev/ttys000
