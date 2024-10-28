
dossier_entree="$PWD/.."
dossier_arrivee="/imageGRUB"
image="navi.png"


if [ ! -d "$dossier_arrivee" ]; then
    mkdir -p "$dossier_arrivee"
fi
cp $dossier_entree/hypr/wallpaper/$image $dossier_arrivee
cp $dossier_entree/otherConfig/grub /etc/default/grub
grub-mkconfig -o /boot/grub/grub.cfg
