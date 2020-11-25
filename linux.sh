set -ex

curl -sL https://deb.nodesource.com/setup_15.x | sudo -E bash -
sudo apt-get install -y nodejs


mkdir ~/.npm-global
npm config set prefix '~/.npm-global'
export PATH=~/.npm-global/bin:$PATH

# npm install of these succeeds, but then returns 1 as its exit value.  Just
# assume it worked; if it didn't, everything will die immediately
sudo npm install -g truffle @truffle/hdwallet-provider ganache-cli || true

# these npm packages were written correctly
sudo npm install -g dotenv
