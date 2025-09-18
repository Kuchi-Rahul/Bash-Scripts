#!/bin/bash

set -e

sudo su - << 'EOF'

echo "Checking if java is already present"
if ! command -v java > /dev/null 2>&1 ; then
	echo "Java is not installed. Installing Open jdk now"
        apt update -y
        apt install unzip openjdk-21-jdk -y

fi

java -version
javac -version


echo "switching to /opt directory"
cd /opt/ || {echo "ERROR IN ChANGING TO OPT DIRECTORY"; exit 1 }

echo "Downloading Maven"
wget https://dlcdn.apache.org/maven/maven-3/3.9.11/binaries/apache-maven-3.9.11-bin.zip


unzip apache-maven-3.9.11-bin.zip #Make sure unzip is previously installed #Extract by unzipping maven

rm -f apache-maven-3.9.11-bin.zip


#setting Env Variables
cat << 'EOL' > /etc/profile.d/maven.sh  
export M2_HOME=/opt/apache-maven-3.9.11
export PATH=$M2_HOME/bin:$PATH

EOL

EOF

echo "reloading profile"
source /etc/profile.d/maven.sh  #also perform one more time manually in normal user to work mvn commands

echo "verifying maven installation"
command -v mvn && mvn -version || echo "Maven not installed or path has not set "

























