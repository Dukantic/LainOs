
parent_dir=$(dirname "$(dirname "$(realpath "$0")")")
dossier_entree="$PWD/.."
dossier_arrivee="/imageGRUB"
image="navi.png"


if [ ! -d "$dossier_arrivee" ]; then
    sudo mkdir -p "$dossier_arrivee"
fi
sudo cp $dossier_entree/hypr/wallpaper/$image $dossier_arrivee
sudo cp $dossier_entree/otherConfig/grub /etc/default/grub
sudo grub-mkconfig -o /boot/grub/grub.cfg


theme_sddm="/usr/share/sddm/themes/"
sudo cp -r "$parent_dir/otherConfig/simple-lain-sddm/" "$theme_sddm/simple-lain-sddm"
