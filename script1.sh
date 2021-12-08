#! /bin/sh
function minikube()
{
sudo apt-get update -y
sudo apt-get upgrade -y
sudo apt-get install apt-transport-https 
sudo apt-get -y install virtualbox
sudo wget https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64
sudo cp minikube-linux-amd64 /usr/local/bin/minikube
sudo chmod 755 /usr/local/bin/minikube
sudo curl -LO https://storage.googleapis.com/kubernetes-release/release/`curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt`/bin/linux/amd64/kubectl
sudo chmod +x ./kubectl
sudo mv ./kubectl /usr/local/bin/kubectl
minikube start
}

minikube




