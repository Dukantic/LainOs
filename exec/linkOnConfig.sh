
# ------ Replace file to symbolic for config ------

# .bashrc -> .config/.bashrc

parent_dir=$(dirname "$(dirname "$(realpath "$0")")")
link_path="$HOME/.bashrc"

if [ -f "$link_path" ]; then
    rm "$link_path.OLD"
    mv -f "$link_path" "$link_path.OLD"
    echo "creation .bashrc.OLD."

fi
ln -s "$parent_dir/.bashrc" "$link_path"
echo ".bashrc done."


# .clang-format -> .config/otherConfig/.clang-format

parent_dir=$(dirname "$(dirname "$(realpath "$0")")")
link_path="$HOME/.clang-format"

if [ -f "$link_path" ]; then
    rm "$link_path.OLD"
    mv -f "$link_path" "$link_path.OLD"
    echo "creation .CLANG_FORMAT.OLD."
fi

if [ ! -L "$link_path" ]; then
    ln -s "$parent_dir/otherConfig/.clang-format" "$link_path"
    echo ".clang-format done."
fi
