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


''