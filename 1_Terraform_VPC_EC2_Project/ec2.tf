# Create EC2 Instance
resource "aws_instance" "my-ec2-vpc-vm" {
    ami = "ami-03f4878755434977f"
    instance_type = "t2.micro"
    key_name = "learning-terrform" # create a key pairs under EC2 section
    subnet_id = aws_subnet.vpc-dev-public-subnet-1.id
    vpc_security_group_ids = [aws_security_group.dev-vpc-sg.id]
    user_data = file("apache-install.sh")
}