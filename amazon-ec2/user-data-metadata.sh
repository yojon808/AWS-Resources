#!/bin/bash

# Update system and install httpd (Apache)
yum update -y
yum install -y httpd

# Start httpd service and enable it to start on boot
systemctl start httpd
systemctl enable httpd

EC2AMI=$(curl -s http://169.254.169.254/latest/meta-data/ami-id)
echo '<center><h1>The AMI ID of this Amazon EC2 instance is: EC2AMI </h1></center>' >var/www/html/index.txt
sed "s/EC2ID/$EC2AMI/" /var/www/html/index.txt > /var/www/html/index.html