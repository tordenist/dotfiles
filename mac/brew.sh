#!/usr/bin/env bash

# Install Homebrew (if not installed)
echo "Installing Homebrew."
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

# Save Homebrew’s installed location.
BREW_PREFIX=$(brew --prefix)

# Install GNU core utilities (those that come with macOS are outdated).
# Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
brew install coreutils
ln -s "${BREW_PREFIX}/bin/gsha256sum" "${BREW_PREFIX}/bin/sha256sum"

# Install some other useful utilities like `sponge`.
brew install moreutils
# Install GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed.
brew install findutils
# Install GNU `sed` as gsed
brew install gnu-sed

# Install `wget` with IRI support.
brew install wget --with-iri

brew install gmp
brew install grep
brew install node

# Install useful binaries.
brew install ack
brew install autojump
brew install ffmpeg
brew install git
brew install git-lfs
brew install github/gh/gh
brew install imagemagick --with-webp
brew install p7zip
brew install pigz
brew install pv
brew install rsync
brew install rename
brew install ssh-copy-id
brew install tree
brew install vbindiff

# Installs Casks
brew tap caskroom/cask

## Apps I use
brew cask install bitwarden
brew cask install alfred
brew cask install firefox
brew cask install google-chrome
brew cask install grammarly
brew cask install iterm2
brew cask install kap
brew cask install keycastr
brew cask install skype
brew cask install slack
brew cask install spotify
brew cask install tower
brew cask install atom

## iterm2 theme
brew install romkatv/powerlevel10k/powerlevel10k
echo 'source /usr/local/opt/powerlevel10k/powerlevel10k.zsh-theme' >>! ~/.zshrc

# Remove outdated versions from the cellar.
brew cleanup

# Atom plugins
apm install atom-gpg
apm install busy-signal
apm install hyperlink-hyperclick
apm install ide-yaml
apm install language-groovy
apm install linter-terraform-syntax
apm install advanced-open-file
apm install atom-ide-ui
apm install docker
apm install ide-go
apm install intentions
apm install language-terraform
apm install linter-ui-default
apm install atom-beautify
apm install atomenv
apm install file-icons
apm install ide-json
apm install language-docker
apm install linter
apm install markdown-pdf
apm install atom-clock
apm install auto-indent
apm install go-plus
apm install ide-python
apm install language-gitignore
apm install inter-packer-validate
apm install terraform-fmt
