# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
''
export ZSH="$HOME/nixos-config/.oh-my-zsh"
export ZSH_CUSTOM="$HOME/nixos-config/.oh-my-zsh/custom"

plugins=( 
    git
    zsh-autosuggestions
    zsh-syntax-highlighting
    zsh-command-time
)
source $ZSH/oh-my-zsh.sh

# Display Pokemon-colorscripts
# Project page: https://gitlab.com/phoneybadger/pokemon-colorscripts#on-other-distros-and-macos




# fastfetch. Will be disabled if above colorscript was chosen to install
#fastfetch -c $HOME/.config/fastfetch/config-compact.jsonc

# Set-up icons for files/folders in terminal using eza
alias ls='eza --icons'
alias ll='eza -al --icons'
alias lt='eza -a --tree --level=1 --icons'



# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/hugo/Data/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/hugo/Data/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/home/hugo/Data/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/hugo/Data/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

''