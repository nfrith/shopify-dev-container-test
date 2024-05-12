
sudo apt-get update

if command -v nvm &> /dev/null; then
  echo "NVM is installed"
else
  echo "NVM is not installed"
  sudo curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash
  export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
  [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm
fi

source ~/.bashrc

sudo nvm install 20.12.2

sudo nvm use 20.12.2

sudo npm install -g @shopify/cli
