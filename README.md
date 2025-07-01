# AWS_Terraform_POC
Here is the POC task:

1. Create a VPC, use the CIDR of your choice. Also have internet gateway and the required routes
defined
2. Create an auto scaling group
3. Create a web server instance
4. Change the default web server TCP port from 80 to TCP 8080
5. Create a load balancer and point the web server
6. Open TCP port 80 on the security group to allow incoming traffic from the world
7. Create a IAM user and grant him access to only restart web server
   
Expectations:
1. Use Terraform and Ansible to achieve the above
2. Above tasks must create the usable environment in one single script.
3. You can download and install all the tools required on the computer provided to you.
4. Nice to have would be a Jenkins job calling this script
