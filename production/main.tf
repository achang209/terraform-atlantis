provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "production_example" {
  ami = "ami-04a81a99f5ec58529"
  instance_type = "t2.micro"
  tags = {
    Name = "production-example"
  }
}


# resource "aws_security_group" "sg_allow_http" { 
#   name = "allow-wide-open-http-sg"
#   description = "Allow wide open http inbound traffic"

#   ingress {
#       from_port = 8080
#       to_port = 8080
#       protocol = "tcp"
#       cidr_blocks = ["0.0.0.0/0"]
#   }
# }