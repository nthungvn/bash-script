#! /bin/zsh

# The default interactive shell is now zsh.
# To update your account to use zsh, please run `chsh -s /bin/zsh`.
# For more details, please visit https://support.apple.com/kb/HT208050.
chsh -s /bin/zsh

# Install Google Chrome
# Go to https://www.google.com/chrome/ and scroll down to the bottom and/or find the Other Platforms
# from here, you can find the version for MacOS Mojave 10.14 or MacOS Catalina 10.15

# After install the warning message will be display, can suppress by running the command
defaults write com.google.Chrome SuppressUnsupportedOSWarning -bool true

# But the chrome now will be show the warning: Managed by organization, only solution to unset the policy
defaults delete com.google.Chrome SuppressUnsupportedOSWarning

# Install Xcode cli, this will include git tool
xcode-select --install

# Copy the ssh from other machine disk
mkdir -p ~/.ssh
cp /Volumes/Macintosh\ HD/Users/nthung/.ssh/id_ed25519 ~/.ssh
cp /Volumes/Macintosh\ HD/Users/nthung/.ssh/id_ed25519.pub ~/.ssh
cp /Volumes/Macintosh\ HD/Users/nthung/.ssh/id_rsa ~/.ssh
cp /Volumes/Macintosh\ HD/Users/nthung/.ssh/id_rsa.pub ~/.ssh

chmod 400 ~/.ssh/id_*

git clone git@bitbucket.org:nthungvlvn/home-mac.git
# Continue on the command.sh file in the home-mac directory

# Install brew as the package manager
# https://brew.sh/

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Older MacOS: Additional step after brew installation
echo >> /Users/nthung/.bash_profile
echo 'eval "$(/usr/local/bin/brew shellenv)"' >> /Users/nthung/.bash_profile
eval "$(/usr/local/bin/brew shellenv)"

# Newer MacOS: Additional step after brew installation
echo >> /Users/nthung/.zprofile
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> /Users/nthung/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"

# Install VSCode, find the old version if the OS is running the version Catalina or prior:
# Find the latest version supported Catalina: https://github.com/microsoft/vscode/issues/242842
# https://code.visualstudio.com/docs/supporting/faq#_can-i-run-vs-code-on-old-macos-versions
# https://code.visualstudio.com/docs/supporting/faq#_previous-release-versions
# https://update.code.visualstudio.com/1.97.2/darwin-universal/stable


# Install the cli of VSCode: https://code.visualstudio.com/docs/setup/mac#_install-vs-code-on-macos
# Press Cmd + Shift + P, search Install 'code' command to PATH

# Install SDKman, Installation: https://sdkman.io/install, Usage: https://sdkman.io/usage
curl -s "https://get.sdkman.io" | bash

# Optional: Restart or open another Terminal or run this command:
source "/Users/nthung/.sdkman/bin/sdkman-init.sh"

# List and install JDK
sdk list java
sdk install java 8.0.452-zulu
sdk install java 11.0.27-zulu
sdk install java 17.0.15-zulu
sdk default java 11.0.27-zulu
sdk current java

sdk install maven 3.8.3

