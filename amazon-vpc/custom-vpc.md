# Create VPC
Name: MyVPC
IPv4 CIDR Block: 10.0.0.0/16

# Create Public and Private Subnets

Name: Public-1A
Availability Zone: us-east-1a
IPv4 CIDR Block: 10.0.1.0/24

Name: Public-1B
Availability Zone: us-east-1b
IPv4 CIDR Block: 10.0.2.0/24

Name: Private-1A
Availability Zone: us-east-1a
IPv4 CIDR Block: 10.0.3.0/24

Name: Private-1B
Availability Zone: us-east-1b
IPv4 CIDR Block: 10.0.4.0/24

# Create private route table

Name: Private-RT
VPC: MyVPC
Subnet associations: Private-1A, Private-1B

    * We want a define a private route to control access to the internet on a private subnet. Basically end up with a public and private subnet.  Dont forget to edit subnet associations and define the addresses in the private subnet. 

# Create Internet Gateway

Name: MyIGW
VPC: MyVPC

    * This is allow addresses to access the internet.  Need to define the PUBLIC subnet to use this IGW. Go to route table and add routes. 0.0.0.0/0 > IGW > use the defined IGW to route traffic to the internet. 
    * In the PUBLIC subnets enable "Auto assign public IPv4 address".  This setting will default instances to get a public IP in the PUBLIC subnet. 

    * To test this create an instance.  Set it to the newly created VPC and Public subnet.  Launch it.  Then you should be able to ping any public address, like google.com.  
    * Dont forget to create a security group for the newly created VPC. 