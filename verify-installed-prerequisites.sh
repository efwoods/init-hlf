#!/bin/sh

verify-installed-prerequisites(){
    GIT=$(which git)
    CURL=$(which curl)
    JAVA=$(which java)
    DOCKER=$(which docker)

    echo ""
    echo "Git:"
    if [ -z $GIT ]; then 
        sudo apt install git
    else
       echo "git is installed @: $GIT"
       git --version
    fi

    echo ""
    echo "cURL:"
    if [ -z $CURL ]; then
        sudo apt install curl
    else
        echo "cURL is installed @: $CURL"
        curl --version

    fi

        echo ""
        echo "Docker:"
    if [ -z $DOCKER ]; then
        echo "install Docker"
        snap install docker
        export PATH="$PATH:/snap/bin"
    else
        echo "Docker is installed @: $DOCKER"
        docker --version
        docker-compose --version
    fi

    echo ""
    echo "Java:"
    if [ -z $JAVA ]; then
        echo "install java"
        sudo apt install openjdk-11-jdk
        echo 'JAVA_HOME="/usr/lib/jvm/java-11-openjdk-amd64/bin/"' | sudo tee -a /etc/environment
        source /etc/environment
        echo $JAVA_HOME
    else
        echo "Java is installed @: $JAVA"
        java -version

    fi
}