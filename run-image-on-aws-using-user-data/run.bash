#!/bin/bash
sudo su
sudo yum update -y
sudo yum install -y docker
sudo service docker start
docker run -p 80:80 -p 443:443 -it jobjingjo/translator
