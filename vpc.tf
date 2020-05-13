resource "aws_vpc" "my_vpc" {
  cidr_block = "172.16.0.0/16"

  tags = {
    Name = "Rinky-vpc"
  }
}

resource "aws_subnet" "my_subnet" {
  vpc_id            = "${aws_vpc.my_vpc.id}"
  cidr_block        = "172.16.10.0/24"
  availability_zone = "ap-southeast-2b"

  tags = {
    Name = "Rinky-Subnet"
  }
}

resource "aws_network_interface" "foo" {
  subnet_id   = "${aws_subnet.my_subnet.id}"
  private_ips = ["172.16.10.100"]

  tags = {
    Name = "Rinky-primary_network_interface"
  }
}

resource "aws_instance" "foo" {
  ami           = "ami-029bf83e14803c25f"
  instance_type = "t2.micro"

  tags = {
    Name = "Rinky-instance"
  }

  network_interface {
    network_interface_id = "${aws_network_interface.foo.id}"
    device_index         = 0
  }

  credit_specification {
    cpu_credits = "unlimited"
  }
}
