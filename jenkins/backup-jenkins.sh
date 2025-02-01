#!/bin/bash

echo 'Starting Jenkins Backup!'
cd $JENKINS_HOME

tar czvf $1 . --exclude "./devops"

echo 'Backup done.'

read -p "Copy files to backup server?: " USER_INPUT

if [[ "$USER_INPUT" == "y" || "$USER_INPUT" == "yes" ]];
  then 
    read -p "Insert server username: " USER
    read -p "Insert server host/ip: " HOST
    read -p "Insert directory path: " SPATH
    scp $1 $USER@$HOST:$SPATH
    echo "Server backup done."
fi