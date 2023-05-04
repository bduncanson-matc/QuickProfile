# Check if the .zshrc file exists in the home directory
if [[ ! -e $HOME/.zshrc ]]; then
    # If the file does not exist, create it
    touch $HOME/.zshrc
fi

# Check if the alias ep= already exists in the .zshrc file
if ! grep -q 'alias ep=' $HOME/.zshrc; then
    # If the alias does not exist, append it to the .zshrc file
    echo "alias ep='code $HOME/.zshrc'" >> $HOME/.zshrc
fi
