Create vpc. Ensure CIDR plock in aws does not confict with the existing default CIDR block
Create internet gateway because we noe have an vpc ID
Create private subnet because also it is dependent on VPC ID

PS:  when you create a VPC it creates a default routable
 when you associate the VPC to a specific Round Table it will disassociate itself from the default route table and attach itself to the new created Round Table

 create public subnet

 PS: public and private subnet become different when you associate each one of them to their respective route tables, it becomes either private or public

 public routable creation and Association to its public subnet.  this can be created in the same file

 create elastic IP before creating the private subnet because the private subnet is dependent on the elastic IP

 create private not Gateway this is like creating the internet gateway but for a private subnet.  did not get away is dependent on first public subnet the elastic IP and must be associated its private  subnet

