#! /bin/zsh

# The default interactive shell is now zsh.
# To update your account to use zsh, please run `chsh -s /bin/zsh`.
# For more details, please visit https://support.apple.com/kb/HT208050.
chsh -s /bin/zsh

# Install Xcode cli, this will include git tool
xcode-select --install

# Install brew as the package manager
# https://brew.sh/

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Additional step after brew installation
echo >> /Users/nthung/.bash_profile
echo 'eval "$(/usr/local/bin/brew shellenv)"' >> /Users/nthung/.bash_profile
eval "$(/usr/local/bin/brew shellenv)"

# Install VSCode, find the old version if the OS is running the version Catalina or prior:
# Find the latest version supported Catalina: https://github.com/microsoft/vscode/issues/242842
# https://code.visualstudio.com/docs/supporting/faq#_can-i-run-vs-code-on-old-macos-versions
# https://code.visualstudio.com/docs/supporting/faq#_previous-release-versions
# https://update.code.visualstudio.com/1.97.2/darwin-universal/stable


# Install the cli of VSCode: https://code.visualstudio.com/docs/setup/mac#_install-vs-code-on-macos

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
