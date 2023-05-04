# Check if the .bashrc file exists in the home directory
if [[ ! -e $HOME/.bashrc ]]; then
    # If the file does not exist, create it
    touch $HOME/.bashrc
fi

# Check if the alias ep= already exists in the .bashrc file
if ! grep -q 'alias ep=' $HOME/.bashrc; then
    # If the alias does not exist, append it to the .bashrc file
    echo "alias ep='nano $HOME/.bashrc'" >> $HOME/.bashrc
fi
