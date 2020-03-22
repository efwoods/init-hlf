#!/bin/sh

verify-installed-prerequisites(){
    GIT=$(which git)
    CURL=$(which curl)
    JAVA=$(which java)
    DOCKER=$(which docker)
    MVN=$(which mvn)

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
        echo "PATH=$PATH:/snap/bin">temp
        tail -n +2 /etc/environment | tee -a temp
        sudo mv temp /etc/environment
        source /etc/environment

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
        echo 'JAVA_HOME="/usr/lib/jvm/java-11-openjdk-amd64"' | sudo tee -a /etc/environment
        echo "PATH=$PATH:$JAVA_HOME/bin">temp
        tail -n +2 /etc/environment | tee -a temp
        sudo mv temp /etc/environment
        source /etc/environment
        echo $JAVA_HOME
    else
        echo "Java is installed @: $JAVA"
        java -version

    fi

    echo ""
    echo "Maven:"
    if [ -z $MVN ]; then
        echo "install maven"
        sudo apt install maven
    else
        echo "Maven is installed @: $MVN"
        mvn -version
    fi
}