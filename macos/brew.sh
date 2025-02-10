# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

# Install more recent versions of some macOS tools.
brew install vim --with-override-system-vi
brew install grep
brew install openssh

# Install OS-related tools.
brew install --cask alt-tab
brew install --cask rectangle

# Install other useful binaries.
brew install git
brew install git-lfs
brew install btop

# Remove outdated versions from the cellar.
brew cleanup