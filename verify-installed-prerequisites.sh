#!/bin/sh

verify-installed-prerequisites(){
    GIT=$(which git)
    CURL=$(which curl)
    JAVA=$(which java)
    DOCKER=$(which docker)

    echo "Git:"
    if [ -z $GIT ]; then 
        sudo apt install git
    fi
    
    echo "cURL:"
    if [ -z $CURL ]; then
        sudo apt install curl
    fi

        echo "Docker:"
    if [ -z $DOCKER ]; then
        echo "install Docker"
        snap install docker
    fi

    echo "Java:"
    if [ -z $JAVA ]; then
        echo "install java"
    fi
}