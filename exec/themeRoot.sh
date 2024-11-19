
parent_dir=$(dirname "$(dirname "$(realpath "$0")")")
dir_end="/imageGRUB"
image="navi.png"


if [ ! -d "$dir_end" ]; then
    sudo mkdir -p "$dir_end"
fi
sudo cp $parent_dir/hypr/wallpaper/$image $dir_end
sudo cp $parent_dir/otherConfig/grub /etc/default/grub
sudo grub-mkconfig -o /boot/grub/grub.cfg


theme_sddm="/usr/share/sddm/themes/simple-lain-sddm"
if [ -d "$theme_sdm"]; then
  sudo rm -drf "$theme_sddm.old"
  sudo mv -f "$theme_sddm" "$theme_sddm.old"
fi
sudo cp -r "$parent_dir/otherConfig/simple-lain-sddm" "$theme_sddm"

conf_sddm="/etc/sddm.conf"
sudo rm -f "$conf_sddm"
sudo cp "$parent_dir/otherConfig/sddm.conf" "$conf_sddm"
