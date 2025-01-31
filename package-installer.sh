if [ "$#" -lt 2 ]; then
    echo "Usage: apt <install/remove> <package> <options>"
    echo "options : no-rebuild (ne pas rebuild après l'ajout au fichier)"
    exit 1
fi

if [[ "$1" != "install" && "$1" != "remove" ]]; then
    echo "Erreur : Argument invalide. Utilisation : apt <install|remove> <package>"
    exit 1
fi

if [[ "$#" -eq 3 && $3 = "no-rebuild" ]]; then
    no_rebuild=1
else
    no_rebuild=0
fi


action="$1"
package="$2"

if [[ "$action" == "install" ]]; then
    if grep -q "$package" packages.nix; then
        echo "Package déjà installé : $package"
        exit 1
    else
        sed -i '$ d' packages.nix
        echo -e "\t$package" >> packages.nix
        echo "]" >> packages.nix
        if [[ no_rebuild -eq 0 ]]; then
            sudo nixos-rebuild switch --flake ~/nixos-config > /dev/null 2>&1
            if [ $? -ne 0 ]; then
                sed -i "/$package/d" packages.nix
                echo "Package non trouvé : $package"
                exit 1
            fi
        fi
    fi
else
    if grep -q "$package" packages.nix; then
        sed -i "/$package/d" packages.nix
        if [[ no_rebuild -eq 0 ]]; then
            sudo nixos-rebuild switch --flake ~/nixos-config > /dev/null 2>&1
        fi
    else
        echo "Package non installé : $package"
    fi
fi


