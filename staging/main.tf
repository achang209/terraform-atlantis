provider "aws" {
  region = "us-east-2"
}

resource "aws_instance" "staging_example" {
  ami = "ami-0862be96e41dcbf74"
  instance_type = "t2.small"
  tags = {
    Name = "staging-bob"
  }
}
