What is EC2?

Service that provides resizeable compute capacity in the cloud.It reduces the time required to obtain and boot new servers instances to minutes,allowing you to quickly scale capacity,both up and down,as you computing requirement changes.

EC2 Options:

1. On Demand - 
2. Reserved -
3. Spot -
4. Dedicated Hosts -

EC2 Types:

(DR Mc GIFT PX)
D - Dense storage
R - ram(Memory optimized)
M - main purpose for general apps servers
C - compute
G - graphics
I - IOPS(high speed storage)
F - FPGA(hardware acceleration)
T - cheap general purpose
P - Graphics
X - Extreme memory

EBS?(Elastic Block Store):

Amazon EBS allows you to create storage volumes and attach them to amazon EC2 instances.
Once attached,you can create a file system on top of these volumes,run a database or any other way.

EBS Volume Types:

    General Purpose SSD(GP2):
        ratio of 3 IOPS per GB with up to 10,000 IOPS and the ability to burst up to 3000 IOPS
    Provisioned IOPS SSD(IO1):
        Designed for I/O intensive applications usch as large relational or NoSQL databases
        can provisio upto 20,000 IOPS per volume
    Magnetic:
    Throughput Optimized HDD(ST1):
        Big Data
        Data ware houses
    Cold HDD(SC1):
        File server
        cannot be a boot volume
    Magnetic(Standard):
        bootable volume

