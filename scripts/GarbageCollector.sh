if [[ "$#" -eq 1 ]]; then
    day="$1"
else
    exit 1
fi

nix-env --delete-generations "$day"d
nix-store --gc