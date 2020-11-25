set -ex

curl -sL https://deb.nodesource.com/setup_15.x | sudo -E bash -
sudo apt-get install -y nodejs


mkdir ~/.npm-global
npm config set prefix '~/.npm-global'

# npm install of these succeeds, but then returns 1 as its exit value.  Just
# assume it worked; if it didn't, everything will die immediately
npm install -g truffle @truffle/hdwallet-provider ganache-cli || true

# these npm packages were written correctly
npm install -g dotenv

echo 'export GOPATH=$HOME/go' >> ~/.bashrc
echo 'export GOBIN=$GOPATH/bin' >> ~/.bashrc
echo 'export GOROOT=/usr/local/go' >> ~/.bashrc
echo 'export PATH=$GOROOT/bin:$PATH' >> ~/.bashrc
echo 'export PATH=$GOBIN:$PATH' >> ~/.bashrc
echo 'export PATH=$HOME/.npm-global/bin:$PATH' >> ~/.bashrc
