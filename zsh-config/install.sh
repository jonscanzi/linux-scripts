if [ "$(command -v zsh)" == "" ]; then
        echo 'Error: could not find zsh in your PATH. Please install it and try this script again.'
        exit 1
fi

rm -rf ~/powerlevel10k
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/powerlevel10k
cp ./.zshrc  ~/.zshrc
#cp ./powerlevel10k.zsh-theme ~/powerlevel10k/powerlevel10k.zsh-theme 
cp ./.p10k.zsh ~/
./font_setup.sh
chsh --shell $(command -v zsh)
