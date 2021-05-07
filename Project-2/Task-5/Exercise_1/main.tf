# TODO: Designate a cloud provider, region, and credentials
provider "aws" {
  region = "us-east-1"
}

# TODO: provision 4 AWS t2.micro EC2 instances named Udacity T2
resource "aws_instance" "Udacity-T2" {
  count = "4"
  ami = "ami-0d5eff06f840b45e9"
  instance_type = "t2.micro"
  tags = {
    name = "Udacity T2"
  }
  vpc_security_group_ids=["sg-0e283f3f10b259385"]
  subnet_id="subnet-005cd520efe3dbabf"
}

# TODO: provision 2 m4.large EC2 instances named Udacity M4
resource "aws_instance" "Udacity-M4" {
  count = "2"
  ami = "ami-0d5eff06f840b45e9"
  instance_type = "m4.large"
  tags = {
    name = "Udacity M4"
  }
  vpc_security_group_ids=["sg-0e283f3f10b259385"]
  subnet_id="subnet-005cd520efe3dbabf"
}