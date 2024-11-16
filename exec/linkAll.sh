SOURCE_DIR="../config/"
DEST_DIR="~/.config"

# Vérifier si le dossier source existe
if [ ! -d "$SOURCE_DIR" ]; then
    echo "Erreur : Le dossier source n'existe pas."
    exit 1
fi


# Parcourir tous les fichiers et dossiers dans le dossier source
for item in "$SOURCE_DIR"/*; do
    # Récupérer le nom de base de l'élément
    basename=$(basename "$item")
    
    # Créer un lien symbolique dans le dossier destination
    ln -s "$item" "$DEST_DIR$basename" 
done

echo "Tous les liens symboliques ont été créés dans $DEST_DIR"
