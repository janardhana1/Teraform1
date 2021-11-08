resource "aws_instance" "sample" {
  count                  = length(var.name)
  ami                    = "ami-0dc863062bc04e1de"
  instance_type          = var.instance_type == "" ? "t3.micro" : var.instance_type
  vpc_security_group_ids = [var.SGID]

  tags = {
    Name = element(var.name, count.index)
  }
}

variable "SGID" {}
variable "name" {}

variable "instance_type" {}