# Problem Statement:
1. Create a VPC 
2. put 4 subnets into it with 2 private and 2 public in 2 different availability zones
3. add 2 routing tables,1 public and 1 private and assign to respective subnets
4. create internet gateway and attach it to public subnet 
5. create NAT gateway attach it to private subnet

# VPC - Virtual Private Cloud
* CIDR block - Classless Inter-Domain Routing
    * ->to specify your VPC's contiguous IP address range 
    * ->for example 10.0.0.0/26 means 2^(32-26)  = 2^6 =64,that means we have 64 ip  addresses ranging from 10.0.0.0 to 10.0.0.63
    * ->cannot create VPC larger than 10.0.0.0/16

# Subnets:

* subnet-1:
    * name: private-a
    * vpc: vpcid
    * availability zone: us-west-1a
    * CIDR block: 10.0.0.0/28

* subnet-2:
    * name: private-c
    * vpc: vpcid
    * availability zone: us-west-1c
    * CIDR block: 10.0.0.16/28

* subnet-3:
    * name: public-a
    * vpc: vpcid
    * availability zone: us-west-1a
    * CIDR block: 10.0.0.32/28

* subnet-4:
    * name: public-c
    * vpc: vpcid
    * availability zone: us-west-1c
    * CIDR block: 10.0.0.48/28

# Route Table:
* Every VPC has one default route table created which has main attribute as "YES"

* ->name default route table as public-RT
* ->create a custom route table with name as private-RT
* ->add private subnets to private-RT route table and public to public-RT
* ->one subnet can be associated to only one route table

# Internet Gateway:
* It a an entity which allows connectivity from our vpc to outside internet.

* ->Add route to public-RT from 0.0.0.0/0 to internetgateway-id,so that public subnet will have access to outside internet.

# NAT Gateway:
* As private instances have no public ip,NAT gateway provides internet connection to private instances.

* ->choose one public subnet and create a NAT gateway
* ->go to private subnet and add route from 0.0.0.0/0 to natgateway-id

# point to remember:

* The first four IP addresses and the last IP address in each subnet CIDR block are not available for you to use, and cannot be assigned to an instance. 

* Private Address Space

    * The Internet Assigned Numbers Authority (IANA) has reserved the
        following three blocks of the IP address space for private internets:
        
        * 10.0.0.0        -   10.255.255.255  (10/8 prefix)
        * 172.16.0.0      -   172.31.255.255  (172.16/12 prefix)
        * 192.168.0.0     -   192.168.255.255 (192.168/16 prefix)

   * We will refer to the first block as "24-bit block", the second as
   "20-bit block", and to the third as "16-bit" block. Note that (in
   pre-CIDR notation) the first block is nothing but a single class A
   network number, while the second block is a set of 16 contiguous
   class B network numbers, and third block is a set of 256 contiguous
   class C network numbers.