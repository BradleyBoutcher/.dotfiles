#!/bin/bash 

. ./.bin/setup-util
. ./.bin/set_mac_settings

if [[ "$OSTYPE" == "darwin"* ]]; then
    # Update software 
    softwareupdate --all --install --force

    # Install XCode Utils
    shout "Installing xcode utilities"
    sudo xcode-select --install

    shout "Setting Mac Settings"
    ./.macos
fi

# Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

read -p "Press [Enter] key after verifying `brew doctor` works in another terminal..."

shout "Installing utilities"
install_oh_my_zsh
install_git
install_docker
download_brew_packages
setup_py_env
install_ruby

function doIt() {
	rsync --exclude ".git/" \
		--exclude ".DS_Store" \
		--exclude "bootstrap.sh" \
		--exclude "bin/" \
		-avh --no-perms . ~;
	source ~/.zshrc;
}

if [ "$1" == "--force" -o "$1" == "-f" ]; then
	doIt;
else
	read -p "This may overwrite existing files in your home directory. Are you sure? (y/n) " -n 1;
	echo "";
	if [[ $REPLY =~ ^[Yy]$ ]]; then
		doIt;
	fi;
fi;
unset doIt;

fin
