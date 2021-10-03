provider "aws" {
  region = "eu-north-1"
}

data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["099720109477"]
}

resource "aws_instance" "ec2_netology" {
  ami = data.aws_ami.ubuntu.id
  instance_type = "t3.nano"
  associate_public_ip_address = false
  tags = {
    name = "ec2_netology"
  }
}

data "aws_caller_identity" "current" {}

data "aws_region" "current" {}
