
# Replace .bashrc file to a pointer to .config/.bashrc

if [ -f ~/.bashrc ]; then
    mv ~/.bashrc ~/.BASHRC_HOLD
fi

ln -s "$HOME/.config/.bashrc" "$HOME/.bashrc"

