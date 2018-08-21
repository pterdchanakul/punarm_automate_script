sudo apt-get update

echo "Install Golang"
wget -c https://dl.google.com/go/go1.10.3.linux-amd64.tar.gz
tar -C ~ -xvzf go1.10.3.linux-amd64.tar.gz

echo "Export Golang Path"
sudo echo "export GOPATH=$HOME/go" >> .bashrc
echo "export PATH=$HOME/go/bin:$PATH" >> .bashrc
source .bashrc


echo "Install Hyperledger-Fabric Image and CA and Docker"
mkdir Program
cd Program
curl -sSL http://bit.ly/2ysbOFE | bash -s 1.2.0 1.2.0 0.4.10
cd fabric-samples
echo -n "export PATH=$PWD/bin:$PATH" >> .bashrc
source .bashrc

echo "Finished Install Hyperledger Fabric"
go version
cryptogen version

