#! /bin/sh
function mysql()
{
#Install MySQL
sudo apt update
sudo apt install -y mysql-server-8.0
}

function postgre()
{
# Install the latest version of PostgreSQL.
# If you want a specific version, use 'postgresql-12' or similar instead of 'postgresql':
sudo apt update
sudo apt-get -y install postgresql postgresql-contrib
}

function neo4j()
{
#Install Neo4j
sudo apt update
sudo apt -y install apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://debian.neo4j.com/neotechnology.gpg.key | sudo apt-key add -
sudo add-apt-repository "deb https://debian.neo4j.com stable 4.1"
sudo apt -y install neo4j
sudo systemctl enable neo4j.service
}

function dynamodb()
{
#install DynamoDB
mkdir dynamolocal
cd dynamolocal
wget http://dynamodb-local.s3-website-us-west-2.amazonaws.com/dynamodb_local_latest.tar.gz
tar xzf dynamodb_local_latest.tar.gz
}

mysql

postgre

neo4j

dynamodb



