parent_dir=$(dirname "$(dirname "$(realpath "$0")")")
DEST_DIR="$HOME/.config/"

# Vérifier si le dossier source existe
if [ ! -d "$parent_dir" ]; then
    echo "Erreur : Le dossier source n'existe pas."
    exit 1
fi


# Parcourir tous les fichiers et dossiers dans le dossier source
for item in "$parent_dir"/*; do
    # Récupérer le nom de base de l'élément
    basename=$(basename "$item")

    if [ -d "$DEST_DIR$basename" ]; then
      mv "$DEST_DIR$basename" "$DEST_DIR$basename.old"
    fi
    # Créer un lien symbolique dans le dossier destination
    ln -sf "$item" "$DEST_DIR" 
done

echo "Tous les liens symboliques ont été créés dans $DEST_DIR"
