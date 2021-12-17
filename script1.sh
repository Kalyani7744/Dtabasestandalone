#! /bin/sh
function minikube()
{
sudo apt-get update
sudo apt-get install apt-transport-https
sudo apt-get upgrade
sudo apt-get -y install virtualbox
wget https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64
chmod +x minikube-linux-amd64
sudo mv minikube-linux-amd64 /usr/local/bin/minikube
curl -LO https://storage.googleapis.com/kubernetes-release/release/`curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt`/bin/linux/amd64/kubectl
chmod +x ./kubectl
sudo mv ./kubectl /usr/local/bin/kubectl
}

minikube

echo '
minikube start 2>/home/demouser/logmkstart.txt
' >> /home/demouser/.bashrc



