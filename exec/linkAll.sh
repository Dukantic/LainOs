parent_dir=$(dirname "$(dirname "$(realpath "$0")")")
DEST_DIR="$HOME/.config/"

if [ ! -d "$parent_dir" ]; then
    echo "Erreur, repo don't exist."
    exit 1
fi


# Link all child
for item in "$parent_dir"/*; do
    basename=$(basename "$item")

    if [ -d "$DEST_DIR$basename" ]; then
      mv "$DEST_DIR$basename" "$DEST_DIR$basename.old"
    fi
    ln -sf "$item" "$DEST_DIR" 
done

echo "All link done in $DEST_DIR"
