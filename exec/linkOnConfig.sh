
# ------ Replace file to symbolic for config ------

# .bashrc -> .config/.bashrc

source_file="$HOME/.config/.bashrc"
link_path="$HOME/.bashrc"

if [ -f "$link_path" ] && [ ! -L "$link_path" ]; then
    mv "$link_path" "$HOME/.BASHRC_OLD"
    echo "creation .BASHRC_OLD."
    ln -s "$source_file" "$link_path"
    echo ".clang-format créé avec succès."
fi

# .clang-format -> .config/otherConfig/.clang-format

source_file="$HOME/.config/otherConfig/.clang-format"
link_path="$HOME/.clang-format"

if [ -f "$link_path" ] && [ ! -L "$link_path" ]; then
    mv "$link_path" "$HOME/.CLANG_FORMAT_OLD"
    echo "creation .CLANG_FORMAT_OLD."
    ln -s "$source_file" "$link_path"
    echo ".clang-format créé avec succès."
fi

# 

