resource "aws_instance" "sample" {
  ami                    = "ami-0dc863062bc04e1de"
  instance_type          = "t3.micro"
  vpc_security_group_ids = [var.SGID]

  tags = {
    Name = var.name
  }
}

variable "SGID" {}
variable "name" {}

output "public_ip" {
  value = aws_instance.sample.public_ip
}
