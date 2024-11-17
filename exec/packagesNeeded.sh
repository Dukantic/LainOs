
sudo pacman -Sy

packages=(
    neovim    
    hyprland
    kitty
    waybar
    hyprpaper
    starship
    toilet
    lain wallpapers
    bpytop
    ranger
    font-manager
    playerctl
    brightnessctl
    pulseaudio
    pulseaudio-alsa
    sddm
)

for package in "${packages[@]}"; do
    sudo pacman -S --noconfirm "$package"
done

echo "All packages installed."
