resource "aws_eip" "my-eip" {
    instance = aws_instance.my-ec2-vpc-vm.id
    vpc = true
    depends_on = [ aws_internet_gateway.vpc-dev-igw ]
}