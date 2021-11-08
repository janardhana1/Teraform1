resource "aws_instance" "sample" {
  ami                    = "ami-0dc863062bc04e1de"
  instance_type          = "t3.micro"
  vpc_security_group_ids = [var.SGID]

  tags = {
    Name = "sample-1"
  }
}

variable "SGID" {}
