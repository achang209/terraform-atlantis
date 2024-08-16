provider "aws" {
  region = "us-east-2"
}

resource "aws_instance" "staging_example" {
  # ami = "ami-003932de22c285676"
  ami = "ami-0862be96e41dcbf74"
  instance_type = "t2.medium"
  tags = {
    Name = "staging-no-approvals"
  }
}

resource "aws_security_group" "sg_allow_http" { 
  name = "allow-wide-open-http-sg"
  description = "Allow wide open http inbound traffic"

  ingress {
      from_port = 8080
      to_port = 8080
      protocol = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
  }
}

