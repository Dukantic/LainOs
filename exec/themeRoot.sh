
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


theme_sddm="/usr/share/sddm/themes/simple-lain-sddm"
if [ -d "$theme_sdm"]; then
  sudo rm -drf "$theme_sddm.old"
  sudo mv -f "$theme_sddm" "$theme_sddm.old"
fi
sudo cp -r "$parent_dir/otherConfig/simple-lain-sddm" "$theme_sddm"

conf_sddm="/etc/sddm.conf"
sudo rm -drf "$conf_sddm"
sudo cp "$parent_dir/otherConfig/sddm.conf" "conf_sddm"
