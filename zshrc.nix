# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
''
export ZSH="$HOME/nixos-config/.oh-my-zsh"
export ZSH_CUSTOM="$HOME/nixos-config/.oh-my-zsh/custom"

ZSH_THEME="xiong-chiamiov-plus"

plugins=( 
    git
    zsh-autosuggestions
    zsh-syntax-highlighting
)
source $ZSH/oh-my-zsh.sh

# Display Pokemon-colorscripts
# Project page: https://gitlab.com/phoneybadger/pokemon-colorscripts#on-other-distros-and-macos


# Remplace 'path/to/your/file' par le chemin vers ton fichier
content=$(cat ~/nixos-config/.theme_mode)

if [[ "$content" == "Light" ]]; then
    # Remplace 'commande_light' par la commande que tu veux exécuter pour 'Light'
    pokemon-colorscripts --no-title -s -n reshiram
elif [[ "$content" == "Dark" ]]; then
    # Remplace 'commande_dark' par la commande que tu veux exécuter pour 'Dark'
    pokemon-colorscripts --no-title -s -n zekrom
else
    echo "Contenu non reconnu : $content"
fi


# fastfetch. Will be disabled if above colorscript was chosen to install
#fastfetch -c $HOME/.config/fastfetch/config-compact.jsonc

# Set-up icons for files/folders in terminal using eza
alias ls='eza -a --icons'
alias ll='eza -al --icons'
alias lt='eza -a --tree --level=1 --icons'

clear() {
    command clear  # Exécute la commande clear
    # Ajoute ici la commande supplémentaire que tu veux exécuter
    content=$(cat ~/nixos-config/.theme_mode)
    if [[ "$content" == "Light" ]]; then
    # Remplace 'commande_light' par la commande que tu veux exécuter pour 'Light'
        pokemon-colorscripts --no-title -n reshiram
    elif [[ "$content" == "Dark" ]]; then
    # Remplace 'commande_dark' par la commande que tu veux exécuter pour 'Dark'
    	pokemon-colorscripts --no-title -n zekrom
    else
    	echo "Contenu non reconnu : $content"
    fi
}

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