how packer is used in chef?
how packer is used in aws?
what is capistrano?
what is unicorn?
what is ingress?

===========================

port 80 - http
port 22 - ssh
port 443 - https
port 27017 - mongo
port 11211 - memcached
port 3306 - mysql
port 6879 - redis

===========================
Terminology:
ACL - Access Control List
ARN - Amazon Resource Names
KMS - Key Management Service
CMK - Customer Master Key
IIS - Internet Information Service
NAT - Network Address Translation
CIDR - Classless Inter-Domain Routing
CDN - Content Delivery Network
ICMP - Internet Control Message Protocol
DHCP - Dynamic Host Configuration Protocol

Protocols:
SSH - Secure Shell
TCP - Transmission Control Protocol 
UDP - User Datagram Protocol
SCP - Secure Copy Protocol
FTP - File Transfer Protocol
SFTP - Secure File Transfer Protocol
HTTP - Hyper Text Transfer Protocol
HTTPS -Hyper Text Transfer Protocol Secure
SSL - Secure Socket Layer
TLS - Transport Layer Security
SMTP - Simple Mail Transfer Protocol


===========================
AWS Services:

EC2
S3
Route53
Cloud formation
RDS
Cloudwatch
Cloudfront
IAM
Elastic Cache

===========================

Concepts:
Bastion instance(jump boxes)
VPC endpoints - for access other aws services in private ec2-instance without nat gateway


===========================
doubts:
Custom resources in part 1

===========================
TO DO:
RDS, SQS,S3 in cloud formation
Private subnet -nat gateway

===========================

VPC Revision:

Vpc
cidr blocks
routetable
network acl's
public and private subnets
internetgateway
instances
security groups
nat-gateway and nat-instances
bastion instance
vpc endpoints
flow log -cloudwatch
Elb basics


212
180
144
75
28

Hashmap
Sonarqube

*/5 * * * * /opt/aws-scripts-mon/mon-put-instance-data.pl --mem-util --mem-used --mem-avail --swap-util --disk-space-util --disk-path=/ --from$
# Chef Name: cleanup_instance_data
@reboot rm -rf /var/tmp/aws-mon && /opt/aws-scripts-mon/mon-put-instance-data.pl --mem-util --verify
