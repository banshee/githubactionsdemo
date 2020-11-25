set -e

export NVM_DIR=~/.nvm
source ~/.nvm/nvm.sh
cat ~/.nvm/nvm.sh

nvm install 14.15.1

# npm install of these succeeds, but then returns 1 as its exit value.  Just
# assume it worked; if it didn't, everything will die immediately
npm install -g truffle @truffle/hdwallet-provider ganache-cli || true

# these npm packages were written correctly
npm install -g dotenv

