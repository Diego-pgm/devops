#!/bin/bash

echo 'Starting Jenkins Backup!'
cd /var/lib/jenkins

tar cvf /opt/jenkins-bak.tar .
gzip /opt/jenkins-bak.tar

echo 'Backup done.'